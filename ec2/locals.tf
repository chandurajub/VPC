locals {
  public_sub = data.terraform_remote_state.vpc.outputs.public_sub

  private_sub = data.terraform_remote_state.vpc.outputs.private_sub

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  manage_vpc = data.terraform_remote_state.vpc.outputs.manage_vpc
}
