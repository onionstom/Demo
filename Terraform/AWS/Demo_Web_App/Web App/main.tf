module "Web_Module_1" {
  source = "./Modules/Web_App_Module"

  # Input Variables
  region = "eu-west-1"
  bucket_prefix    = "web-app-s3"
  domain           = "tomonions.co.uk"
  app_name         = "web-app"
  instance_type    = "t2.micro"
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password

}