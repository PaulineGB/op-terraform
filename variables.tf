variable "region" {
  description = "The AWS region to deploy infrastructure"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  type = string
}

variable "env_and_subnets" {
  description = "Production environment"
  type = map(list(object({
    name       = string
    vpc_id     = number
    cidr_block = string
    az         = string
  })))
}
