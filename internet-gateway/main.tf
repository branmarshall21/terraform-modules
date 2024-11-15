resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = var.vpc_id

  tags = merge(var.tags, {
    Name = var.name
  })
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}