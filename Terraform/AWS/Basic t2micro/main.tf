provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "test_ubuntu_instance" {
    ami = "ami-04e7764922e1e3a57"   #   Amazon Linux Free Tier instance
    instance_type = "t2.micro"
}