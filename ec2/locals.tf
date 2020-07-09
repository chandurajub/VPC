variable "public_sub" {
  default = data.terraform_remote_state.vpc.outputs.public_sub
}
variable "private_sub" {
  default = data.terraform_remote_state.vpc.outputs.private_sub
}
variable "vpc_id" {
  default = data.terraform_remote_state.vpc.outputs.vpc_id
}
