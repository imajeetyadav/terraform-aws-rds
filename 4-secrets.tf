resource "aws_secretsmanager_secret" "database_name" {
  name                    = "${var.name}rds-database-name"
  description             = "RDS credential - ${var.name}"
  recovery_window_in_days = 0

  tags = {
    Name    = "${var.name}-rds-database-name"
    Project = var.name
  }
}

resource "aws_secretsmanager_secret_version" "database_name" {
  secret_id     = aws_secretsmanager_secret.database_name.id
  secret_string = var.database_name
}

resource "aws_secretsmanager_secret" "database_username" {
  name                    = "${var.name}/rds-database-username"
  description             = "RDS credential - ${var.name}"
  recovery_window_in_days = 0

  tags = {
    Name    = "${var.name}-rds-database-username"
    Project = var.name
  }
}

resource "aws_secretsmanager_secret_version" "database_username" {
  secret_id     = aws_secretsmanager_secret.database_username.id
  secret_string = var.database_username
}

resource "aws_secretsmanager_secret" "database_password" {
  name                    = "${var.name}/rds-database-password"
  description             = "RDS credential - ${var.name}"
  recovery_window_in_days = 0

  tags = {
    Name    = "${var.name}-rds-database-password"
    Project = var.name
  }
}

resource "aws_secretsmanager_secret_version" "database_password" {
  secret_id     = aws_secretsmanager_secret.database_password.id
  secret_string = var.database_password
}

