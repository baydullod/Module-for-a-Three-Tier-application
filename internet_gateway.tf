resource "aws_internet_gateway" "wpgw" {
  vpc_id = aws_vpc.main.id
  tags = var.tags
}