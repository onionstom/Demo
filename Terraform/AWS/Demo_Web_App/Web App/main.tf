module "Web_Module_1" {
  source = "./Modules/Web_App_Module"

  # Input Variables
  bucket_prefix    = "web-app-data"
  domain           = "TomOnions.co.uk"
  app_name         = "web-app-1"
  instance_type    = "t2.micro"
  DB_Name = var.db_name
  DB_Username = var.db_username
  DB_Password = var.db_password

}