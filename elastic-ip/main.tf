resource "aws_eip" "eip" {
  vpc = var.in_vpc

  tags = merge(var.tags, {})
}

output "eip_id" {
  value = aws_eip.eip.id
}