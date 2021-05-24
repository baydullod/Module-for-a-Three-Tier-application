resource "aws_instance" "mysqlos" {
   
    ami             = "ami-49fa8e5f"
    instance_type   = var.instance_type
    key_name        = aws_key_pair.generated_key.key_name
    security_groups = [aws_security_group.sg_mysql.id, aws_security_group.admin-bastion.id , ]
    subnet_id = aws_subnet.private_subnet1.id
    tags   = var.tags
}

