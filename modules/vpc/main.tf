module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"

  cidr               = var.cidr_block
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  create_igw         = true
  enable_nat_gateway = false
}
