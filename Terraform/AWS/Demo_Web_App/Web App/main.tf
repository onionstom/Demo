module "Web_Module_1" {
  source = "./Web_App_Module"

  # Input Variables
  bucket_prefix    = "web-app-data"
  domain           = "TomOnions.co.uk"
  app_name         = "web-app-1"
  instance_type    = "t2.micro"
  DB_Name = var.DB_Name
  DB_Username = var.DB_Username
  DB_Password = var.DB_Password

}