module "my_sg_calling_module" {
  source                   = "git@github.com:GayathriDevops1/terraform-modules.git//ec2/module?ref=main"
  vpc_id                   = module.myvpc_calling_module.myvpc_id
  public_subnet_cidr_block = module.my_public_subnet_calling_module.my_public_subnet_cidr_block
}
