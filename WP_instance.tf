resource "aws_instance" "WordPress" {
  depends_on   = [
      aws_instance.mysqlos
    ]
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = var.instance_type
  key_name      = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [aws_security_group.WPsg.id]
  associate_public_ip_address = true
  subnet_id = aws_subnet.public_subnet1.id
  availability_zone = data.aws_availability_zones.available.names[0]
  user_data = file("files/wordpress.sh")
   tags = var.tags
   }
