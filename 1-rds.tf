resource "aws_db_instance" "rds" {
  identifier            = "${var.name}-rds"
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  multi_az              = var.multi_az
  db_name               = var.database_name
  username              = var.database_username
  password              = var.database_password
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage

  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_ids.name
  vpc_security_group_ids = [aws_security_group.rds.id]

  enabled_cloudwatch_logs_exports       = var.enabled_cloudwatch_logs_exports
  maintenance_window                    = var.maintenance_window
  backup_window                         = var.backup_window
  storage_encrypted                     = var.storage_encrypted
  backup_retention_period               = var.backup_retention_period
  skip_final_snapshot                   = var.skip_final_snapshot
  deletion_protection                   = var.deletion_protection
  delete_automated_backups              = var.delete_automated_backups
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period
  apply_immediately                     = var.apply_immediately

  parameter_group_name = aws_db_parameter_group.rds.name

  tags = {
    Name    = "${var.name}-rds"
    Project = var.name
  }
}

resource "aws_db_parameter_group" "rds" {
  name   = "${var.name}-rds-pg"
  family = var.family

  parameter {
    name  = "log_connections"
    value = "1"
  }

  parameter {
    name  = "autovacuum"
    value = 1
  }

  parameter {
    name  = "client_encoding"
    value = "utf8"
  }
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name    = "${var.name}-db-parameter-group"
    Project = var.name
  }
}
