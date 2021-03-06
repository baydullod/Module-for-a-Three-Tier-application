resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr1
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]
   tags = var.tags
}
resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr2
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = var.tags
}
resource "aws_subnet" "public_subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr3
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[2]
   tags = var.tags
}
