resource "aws_route_table" "wproute" {
  vpc_id = aws_vpc.main.id
  tags = var.tags

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wpgw.id
 }

}

resource "aws_route_table_association" "public1" {
	subnet_id = aws_subnet.public_subnet1.id
	route_table_id = aws_route_table.wproute.id
}

resource "aws_route_table_association" "public2" {
	subnet_id = aws_subnet.public_subnet2.id
	route_table_id = aws_route_table.wproute.id
}

resource "aws_route_table_association" "public3" {
	subnet_id = aws_subnet.public_subnet3.id
	route_table_id = aws_route_table.wproute.id
}