
  public_sub = data.terraform_remote_state.vpc1.outputs.public_sub

  private_sub = data.terraform_remote_state.vpc1.outputs.private_sub

  vpc_id = data.terraform_remote_state.vpc1.outputs.vpc_id

  manage_vpc = data.terraform_remote_state.vpc1.outputs.manage_vpc
