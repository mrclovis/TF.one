provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.150.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Cenotie-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.150.1.0/24"

  tags = {
    Name = "Cenotie-subnet-1"
  }
}