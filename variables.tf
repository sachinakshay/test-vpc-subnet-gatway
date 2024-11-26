
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "The CIDR block for public subnet 1"
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "The CIDR block for public subnet 2"
}

variable "private_subnet_1_cidr" {
  type        = string
  description = "The CIDR block for private subnet 1"
}

variable "private_subnet_2_cidr" {
  type        = string
  description = "The CIDR block for private subnet 2"
}

variable "az_1" {
  type        = string
  description = "The availability zone for subnet 1"
}

variable "az_2" {
  type        = string
  description = "The availability zone for subnet 2"
}

variable "public_subnet_1_name" {
  type        = string
  description = "Name of the public subnet 1"
}

variable "public_subnet_2_name" {
  type        = string
  description = "Name of the public subnet 2"
}

variable "private_subnet_1_name" {
  type        = string
  description = "Name of the private subnet 1"
}

variable "private_subnet_2_name" {
  type        = string
  description = "Name of the private subnet 2"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnet_id" {
  type        = string
  description = "Public subnet ID for NAT Gateway"
}
    
