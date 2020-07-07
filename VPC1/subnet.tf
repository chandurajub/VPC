resource "aws_subnet" "public" {
  count = length(data.aws_availability_zones.azs.names)
  vpc_id     = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.azs.names[count.index]
  cidr_block = cidrsubnet(var.cidr,8,count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.tags}-subnet-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count = length(data.aws_availability_zones.azs.names)
  vpc_id     = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.azs.names[count.index]
  cidr_block = cidrsubnet(var.cidr,8,length(data.aws_availability_zones.azs.names)+count.index+1)

  tags = {
    Name = "${var.tags}-subnet-${count.index}"
  }
}