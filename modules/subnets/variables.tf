# variables.tf
variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created."
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet."
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet."
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet."
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for the second private subnet."
}

variable "az_1" {
  description = "Availability Zone for the first set of subnets."
}

variable "az_2" {
  description = "Availability Zone for the second set of subnets."
}

variable "public_subnet_1_name" {
  description = "Name tag for the first public subnet."
}

variable "public_subnet_2_name" {
  description = "Name tag for the second public subnet."
}

variable "private_subnet_1_name" {
  description = "Name tag for the first private subnet."
}

variable "private_subnet_2_name" {
  description = "Name tag for the second private subnet."
}
