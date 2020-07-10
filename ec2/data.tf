data "aws_vpc" "vpc" {
  id = "${local.vpc_id}"
}
data "aws_vpc" "manage_vpc" {
  id = local.manage_vpc
}