module "Web_Module_1" {
  source = "../Web_App_Module"

  # Input Variables
  bucket_prefix    = "web-app-data"
  domain           = "TomOnions.co.uk"
  app_name         = "web-app-1"
  instance_type    = "t2.micro"

  # Sensitive variables in Terraform Cloud

variable "DB_ame" {
  type        = string
  description = "The name of the database"
}
}