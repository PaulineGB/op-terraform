### VPC ###

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}

### Internet Gateway ###

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.ig_name
  }
  depends_on = [aws_vpc.vpc]
}


### Publics subnets web ###

resource "aws_subnet" "public_subnet_web" {
  count = length(var.env_and_subnets.web)

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.env_and_subnets.web[count.index].cidr
  availability_zone       = var.env_and_subnets.web[count.index].az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.env_and_subnets.web[count.index].name}"
  }
  depends_on = [aws_internet_gateway.igw]
}
