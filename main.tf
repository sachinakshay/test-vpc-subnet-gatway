module "vpc" {
  source        = "modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  vpc_name       = "my-vpc"
}

module "subnets" {
  source                      = "modules/subnets"
  vpc_id                      = module.vpc.vpc_id
  public_subnet_1_cidr        = "10.0.1.0/24"
  public_subnet_2_cidr        = "10.0.2.0/24"
  private_subnet_1_cidr       = "10.0.3.0/24"
  private_subnet_2_cidr       = "10.0.4.0/24"
  az_1                        = "us-east-1a"
  az_2                        = "us-east-1b"
  public_subnet_1_name        = "Public Subnet 1"
  public_subnet_2_name        = "Public Subnet 2"
  private_subnet_1_name       = "Private Subnet 1"
  private_subnet_2_name       = "Private Subnet 2"
}

module "internet_gateway" {
  source    = "modules/internet_gateway"
  vpc_id    = module.vpc.vpc_id
  igw_name  = "my-igw"
}

module "nat_gateway" {
  source            = "modules/nat_gateway"
  public_subnet_id  = module.subnets.public_subnet_1_id
  nat_gateway_name  = "my-nat-gw"
}

# Outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "internet_gateway_id" {
  value = module.internet_gateway.internet_gateway_id
}
output "nat_gateway_id" {
  value = module.nat_gateway.nat_gateway_id
}
