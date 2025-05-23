variable "region" {
  description = "The AWS region to deploy infrastructure"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_vpc" {
  type = string
}
