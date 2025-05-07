terraform {

  cloud {
    organization = "TomOnionsTesting"

    workspaces {
      name = "Web_App"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}