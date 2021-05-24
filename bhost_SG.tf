resource "aws_security_group" "bastion-allow" {
	name        	= "bastion-to-mysql"
	description 	= "ssh from bastion"
	vpc_id      	= aws_vpc.main.id
     tags = var.tags

	ingress {
		description 	= "ssh"
		security_groups =[ aws_security_group.admin-bastion.id , ]
     	from_port   	= 22
		to_port     	= 22
		protocol    	= "tcp"
		cidr_blocks 	= ["0.0.0.0/0"]
	}


	egress {
		from_port   	= 0
		to_port     	= 0
		protocol    	= "-1"
		cidr_blocks 	= ["0.0.0.0/0"]
	}
}