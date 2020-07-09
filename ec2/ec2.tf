resource "aws_instance" "ec2" {
  ami = "ami-0c84a3e93390c29bc"
  instance_type = "t2.micro"
  subnet_id = element(var.private_sub,0)
  vpc_security_group_ids = [aws_security_group.allow_ssh]
}