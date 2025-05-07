variable "DB_Name" {
  type        = string
  description = "The name of the database"
  sensitive = true
}
variable "DB_Password" {
  type        = string
  description = "The password for the database"
  sensitive = true
}
variable "DB_User" {
  type        = string
  description = "The nuser for the database"
  sensitive = true
}