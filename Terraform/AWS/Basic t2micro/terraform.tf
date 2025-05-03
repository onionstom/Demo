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
}