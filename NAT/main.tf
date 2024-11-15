resource "aws_nat_gateway" "nat_gw" {
  allocation_id = var.eip_id
  subnet_id     = var.subnet_id

  tags = merge(var.tags, {
    Name = var.name
  })
}

output "nat_gw_id" {
  value = aws_nat_gateway.nat_gw.id
}