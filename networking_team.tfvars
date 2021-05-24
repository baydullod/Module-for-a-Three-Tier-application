region       = "us-east-1"
cidr_block   = "10.0.0.0/16"
public_cidr1 = "10.0.101.0/24"
public_cidr2 = "10.0.102.0/24"
public_cidr3 = "10.0.103.0/24"
private_cidr1 = "10.0.1.0/24"
private_cidr2 = "10.0.2.0/24"
private_cidr3 = "10.0.3.0/24"
instance_type = "t2.micro"
vpc_security_group_ids = "WPsg, sg_mysql, bastion-allow, admin-bastion"
subnet_id = "aws_subnet.public_subnet1.id, ws_subnet.private_subnet1.id"
tags = {
	Environment = "Dev"
	Team = "DevOps"
	Created_by = "Davlat"
	Department = "IT"
}
