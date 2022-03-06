module "myvpc_calling_mudule"{
    #source ="../terraform-mudules/vpc/module" - local repo reference
     source = "git::ssh://git@github.com:GayathriDevops1/terraform-modules.git//vpc/module?ref=main"  //- git hub repo reference
    vpc_cidr_block = var.vpc_cidr_block
    project ="infra_training"
}


/* module "myvpc_calling_module" {

    # Local Repo Reference
    # source = "../terraform-modules/vpc/module"
    # GITHUB Repo Reference
    source = "git@github.com:rajavasista/terraform-modules.git//vpc/module?ref=main"

    vpc_cidr_block = var.vpc_cidr_block
    project = "INFRA_TRAINING"
 */
