resource "aws_instance" "bastion-host" {
	ami 		= "ami-0d5eff06f840b45e9"
	instance_type = var.instance_type
    key_name      = aws_key_pair.generated_key.key_name
  	subnet_id 	= aws_subnet.public_subnet1.id
	security_groups = [ aws_security_group.admin-bastion.id , ]
    tags = var.tags
    }
	