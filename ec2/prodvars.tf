variable "public_sub" {
  default = [
    "subnet-0377ff8245bbd5e4a",
    "subnet-0f639ed99fe8a223e",
    "subnet-0b4be057106334f51",
    "subnet-0ca52c212a6c59fde",
  ]

}
variable "private_sub" {
  default =  [
    "subnet-013e949f5feb25add",
    "subnet-0176ce6fb5cd9df18",
    "subnet-07e81f682c8e3810e",
    "subnet-09ac7440c8ec65fcb",
  ]


}
variable "vpc_id" {
  default =  "vpc-0cf1926b83a2d0894"
}
variable "manage_vpc" {
  default =  "vpc-af6b19d7"

}