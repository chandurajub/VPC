resource "aws_subnet" "main" {
  count = length(data.aws_availability_zones.azs.names)
  vpc_id     = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.azs.names[count.index]
  cidr_block = cidrsubnet(var.cidr,8,count.index)

  tags = {
    Name = "${var.tags}-subnet-${count.index}"
  }
}