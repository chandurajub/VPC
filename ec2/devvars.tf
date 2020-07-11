
variable "public_sub" {
  default = data.terraform_remote_state.vpc1.outputs.public_sub

}
variable "private_sub" {
  default = data.terraform_remote_state.vpc1.outputs.private_sub

}
variable "vpc_id" {
  default = data.terraform_remote_state.vpc1.outputs.vpc_id
}
variable "manage_vpc" {
  default = data.terraform_remote_state.vpc1.outputs.manage_vpc

}