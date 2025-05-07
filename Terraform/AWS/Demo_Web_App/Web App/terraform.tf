terraform {

  cloud {
    organization = "TomOnionsTesting"

    workspaces {
      name = "Web_App"
    }
  }
