provider "aws" {
  region     = "ca-central-1"
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

resource "aws_instance" "appserver" {
    ami           = "ami-08523c5075ba75813"
    instance_type = "t2.micro"
    key_name      = "tech23"
    tags = {
        Name = "dbserver"
        Environment = "dev"

    }

}

resource "aws_s3_bucket" "mys3" {
  bucket = "tomis3"
  acl    = "private"

  tags = {
    Name        = "tomi"
    Environment = "Dev"
  }
}
