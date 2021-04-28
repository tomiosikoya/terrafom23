#main.tf
# HCL 
provider "aws" {
  region = "ca-central-1"
}
# vpc.tf
resource "aws_vpc" "vpc23" {
    cidr_block = "10.10.0.0/20"
    tags = {
        Name = "myvpc23"
        Environment = "dev"
    }
}
# ec2.tf 
resource "aws_instance" "server1" {
    ami           = "xxx"
    instance_type = "t2.micro"
    key_name      = "key"
    tags = {
        Name = "dbserver"
        Environment = "dev"
    }
  
}
resource "aws_s3_bucket" "mys3" {
  bucket = "class23"
  acl    = "private"

  tags = {
    Name        = "class23abc"
    Environment = "Dev"
  }
}

