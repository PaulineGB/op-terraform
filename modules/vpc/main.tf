module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"

  name               = var.vpc_name
  cidr               = var.cidr_block
  create_igw         = true
  enable_nat_gateway = false
}

