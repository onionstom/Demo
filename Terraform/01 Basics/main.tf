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
}

resource "aws_instance" "test ubuntu instance" {
    ami = "ami-04e7764922e1e3a57"   #   Amazon Linux Free Tier instance
    instance_type = "t2.micro"
}