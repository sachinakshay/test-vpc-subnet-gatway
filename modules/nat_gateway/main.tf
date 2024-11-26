resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.public_subnet_id
  tags = {
    Name = var.nat_gateway_name
  }
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gw.id
}
