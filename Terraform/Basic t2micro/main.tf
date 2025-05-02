terraform {
  backend "remote" {
    organization = "TomOnionsTesting"

    workspaces {
      name = "Demo"
    }
    
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"    
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  access_key = "${AWS_ACCESS_KEY_ID}"
  secret_key = "${AWS_SECRET_ACCESS_KEY}"
}

resource "aws_instance" "test_ubuntu_instance" {
    ami = "ami-04e7764922e1e3a57"   #   Amazon Linux Free Tier instance
    instance_type = "t2.micro"
}