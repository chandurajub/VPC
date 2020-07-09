data "aws_vpc" "vpc" {
  id = "${local.vpc_id}"
}
