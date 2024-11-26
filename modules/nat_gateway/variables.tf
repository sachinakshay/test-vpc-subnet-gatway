variable "public_subnet_id" {
  description = "The ID of the public subnet where the NAT Gateway will be deployed"
  type        = string
}

variable "nat_gateway_name" {
  description = "The name of the NAT Gateway"
  type        = string
}
