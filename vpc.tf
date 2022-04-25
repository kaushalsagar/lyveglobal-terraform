module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"
  # version = "~> 2.78"

  # VPC Basic Details
  name           = var.vpc-name
  cidr           = var.vpc_cidr_block
  azs            = [var.availabilityzone]
  public_subnets = [var.public_subnet]



  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Type = "public-subnets"
  }
  tags = {
    Owner       = "SAGAR"
  }

  vpc_tags = {
    Name = "VPC-CASESTUDY"
  }
}