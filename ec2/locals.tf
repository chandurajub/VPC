locals {
  public_sub = data.terraform_remote_state.vpc.outputs.public_sub

  private_sub = data.terraform_remote_state.vpc.outputs.private_sub

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
}
