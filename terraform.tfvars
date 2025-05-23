region     = "eu-west-3"
vpc_name   = "pauline-vpc"
cidr_block = "10.16.0.0/16"
ig_name    = "pauline-ig"

env_and_subnets = {
  "web" = [
    {
      name       = "web-public-subnet-1"
      cidr_block = "10.16.176.0/20"
      az         = "eu-west-3a"
    },
    {
      name       = "web-public-subnet-2"
      cidr_block = "10.16.112.0/20"
      az         = "eu-west-3b"
    },
    {
      name       = "web-public-subnet-3"
      cidr_block = "10.16.48.0/20"
      az         = "eu-west-3c"
    }
  ]
  "app" = [
    {
      name       = "app-private-subnet-1"
      cidr_block = "10.16.160.0/20"
      az         = "eu-west-3a"
    },
    {
      name       = "app-private-subnet-2"
      cidr_block = "10.16.96.0/20"
      az         = "eu-west-3b"
    },
    {
      name       = "app-private-subnet-3"
      cidr_block = "10.16.32.0/20"
      az         = "eu-west-3c"
    }
  ]
  "db" = [
    {
      name       = "db-private-subnet-1"
      cidr_block = "10.16.144.0/20"
      az         = "eu-west-3a"
    },
    {
      name       = "db-private-subnet-2"
      cidr_block = "10.16.80.0/20"
      az         = "eu-west-3b"
    },
    {
      name       = "db-private-subnet-3"
      cidr_block = "10.16.16.0/20"
      az         = "eu-west-3c"
    }
  ]
}
