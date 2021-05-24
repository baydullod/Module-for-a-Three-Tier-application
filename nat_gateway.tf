resource "aws_eip" "eip" {
    depends_on = [
        aws_internet_gateway.wpgw
    ]
    vpc        = true
}

resource "aws_nat_gateway" "natgw" {
   allocation_id = aws_eip.eip.id
   subnet_id     = aws_subnet.public_subnet1.id
   tags = var.tags
   depends_on    = [ 
      aws_internet_gateway.wpgw
   ]
}