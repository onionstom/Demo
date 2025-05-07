resource "aws_db_instance" "db_instance" {
  allocated_storage   = 20
  storage_type        = "standard"
  engine              = "postgres"
  engine_version      = "12"
  instance_class      = "db.t2.micro"
  name                = var.DB_Name
  username            = var.DB_User
  password            = var.DB_Pass
  skip_final_snapshot = true
}