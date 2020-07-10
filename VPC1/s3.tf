terraform {
  backend "s3" {
    bucket = "masterbucket01"
    key    = "vpc/tfstate"
    region = "us-west-2"
  }
}

