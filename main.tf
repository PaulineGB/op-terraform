module "vpc" {
  source     = "./modules/vpc"
  region     = var.region
  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block
}
