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