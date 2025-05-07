variable "db_name" {
  type        = string
  description = "The name of the database"
  sensitive = true
}
variable "db_password" {
  type        = string
  description = "The password for the database"
  sensitive = true
}
variable "db_user" {
  type        = string
  description = "The nuser for the database"
  sensitive = true
}