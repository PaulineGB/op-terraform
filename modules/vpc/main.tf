### VPC ###

resource "aws_vpc" "pauline-vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}
