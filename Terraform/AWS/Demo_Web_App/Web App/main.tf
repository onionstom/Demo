module "Web_Module_1" {
  source = "./Modules/Web_App_Module"

  # Input Variables
  bucket_prefix    = "web-app-data"
  domain           = "TomOnions.co.uk"
  app_name         = "web-app-1"
  instance_type    = "t2.micro"
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password

}