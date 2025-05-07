resource "aws_db_instance" "db_instance" {
  allocated_storage     = 20
  storage_type          = "standard"
  engine                = "mysql"
  engine_version        = "8.0.41"
  instance_class        = "db.t3.micro"
  name                  = var.db_name
  username              = var.db_username
  password              = var.db_password
  skip_final_snapshot   = true
  publicly_accessible   = false
  multi_az              = false
}