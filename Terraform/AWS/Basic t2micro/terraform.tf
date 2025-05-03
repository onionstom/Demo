terraform {

  cloud {
    organization = "TomOnionsTesting"

    workspaces {
      name = "Basic_EC2_Deployment"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}