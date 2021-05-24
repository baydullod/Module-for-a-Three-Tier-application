resource "aws_route_table" "private_wproute" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.wpgw.id
	}
	tags = var.tags
}

resource "aws_route_table_association" "private1" {
	subnet_id = aws_subnet.private_subnet1.id
	route_table_id = aws_route_table.private_wproute.id
}

resource "aws_route_table_association" "private2" {
	subnet_id = aws_subnet.private_subnet2.id
	route_table_id = aws_route_table.private_wproute.id
}

resource "aws_route_table_association" "private3" {
	subnet_id = aws_subnet.private_subnet3.id
	route_table_id = aws_route_table.private_wproute.id
}
