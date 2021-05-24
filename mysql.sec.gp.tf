resource "aws_security_group" "sg_mysql" {
 depends_on  = [
  aws_security_group.WPsg
 ]
   name        = "allow_MySQL"
   description = "Allow MySQL inbound traffic"
   vpc_id = aws_vpc.main.id
   ingress {
      description = "Allow SSH for Bastion Host"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      security_groups = [aws_security_group.bastion-allow.id]
   }
   ingress {
      description = "MySQL"
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      security_groups = [aws_security_group.WPsg.id]
   }
   egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
   }
   tags = var.tags
   
}