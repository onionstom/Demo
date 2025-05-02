terraform {

  cloud {
    organization = "TomOnionsTesting"

    workspaces {
      name = "Demo"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  required_version = ">= 1.2"
}