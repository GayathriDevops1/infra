vpc_cidr_block =  "10.40.0.0/25"

//vpc_cidr_block = "10.168.0.0/25"

instance_count = 3

# ami_id = data.aws_ami.centos.id

instance_type = "t2.micro"

public_subnets =["10.40.0.0/28","10.40.0.16/28","10.40.0.32/28"]
private_subnets =["10.40.0.64/28","10.40.0.88/28","10.40.0.96/28"]
