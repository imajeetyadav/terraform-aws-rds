provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "github.com/imajeetyadav/terraform-aws-vpc.git?ref=v1.0.0"
  name               = var.name
  region             = var.region
  cidr               = var.cidr
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}
