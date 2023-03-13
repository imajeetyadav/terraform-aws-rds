provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "git://github.com/imajeetyadav/terraform-aws-vpc.git"
  name               = var.name
  region             = var.region
  cidr               = var.cidr
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}
