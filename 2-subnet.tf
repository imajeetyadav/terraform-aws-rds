resource "aws_db_subnet_group" "rds_subnet_ids" {
  name       = "${var.name}-rds-private-subnet-ids"
  subnet_ids = [module.vpc.private_subnet_ids[0], module.vpc.private_subnet_ids[1]]
  tags = {
    Name    = "${var.name}-rds-private-subnet"
    Project = var.name
  }
}
