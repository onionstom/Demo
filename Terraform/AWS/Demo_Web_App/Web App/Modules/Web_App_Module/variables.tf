# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "eu-west-1"
}

variable "app_name" {
  description = "Name of the web application"
  type        = string
  default     = "web-app-for-demo"
}

# EC2 Variables

variable "ami" {
  description = "Amazon Linx image to be used for EC2"
  type        = string
  default     = "ami-0df368112825f8d8f" # Ubuntu Server 24.04 LTS // eu-west-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_prefix" {
  description = "prefix of s3 bucket for app data"
  type        = string
}

# Route 53 Variables

variable "create_dns_zone" {
  description = "If true, create new route53 zone, if false read existing route53 zone"
  type        = bool
  default     = false
}

variable "domain" {
  description = "Domain for website"
  type        = string
}

# RDS Variables

variable "db_name" {
  type = string
  sensitive = true
}

variable "db_username" {
  type = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}