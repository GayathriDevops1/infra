module "myec2_caling_module"{
    source = "git@github.com:GayathriDevops1/terraform-modules.git//ec2/module?ref=main"  //- git hub repo reference
    instance_count = var.instance_count
    ami_id = data.aws_ami.ubuntu.id
   //ami_id = var.ami_id

   instance_type = var.instance_type
   project = "MY_TF_PRO"
   key_name = module.my_keypair_calling_module.key_name
   public_subnet_id = module.my_privatec_subnet_calling_module.my_public_subnet.id
   vpc_security_group_ids = module.my_sg_calling.Id
}

//ec2/module/main.tf
//https://github.com/GayathriDevops1/terraform-modules/blob/a3d421993f67bdc5d524168e8fee1ce2e4906aa9/ec2/module/main.tf


/*module "myec2_calling_module" {
    source = "git@github.com:rajavasista/terraform-modules.git//ec2/module?ref=main"
    
    instance_count = var.instance_count

    ami_id = data.aws_ami.ubuntu.id
    # ami_id = var.ami_id

    instance_type = var.instance_type

    project = "MY_TF_PRO"

    key_name = module.my_keypair_calling_module.key_name

    public_subnet_id = module.my_public_subnet_calling_module.my_public_subnet_id

    vpc_security_group_ids = module.my_sg_calling_module.security_group_id

}*/