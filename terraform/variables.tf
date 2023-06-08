locals {
  prefix = "3tier-project"
  env    = "dev"
  aws = {
    region = "us-east-1"
  }
  vpc = {
    cidr    = "10.0.0.0/16"
    cidr_subnet_private_1 = "10.0.0.0/24"
    cidr_subnet_private_2 = "10.0.1.0/24"
    cidr_subnet_public_1 = "10.0.2.0/24"
    cidr_subnet_public_2 = "10.0.3.0/24"
  }
}