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
  default     = "ami-04e7764922e1e3a57" # Amazon Linux 2023 AMI 2023.7.20250428.1 // eu-west-1
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

variable "DB_name" {
  type = string
}

variable "DB_Username" {
  type = string
}

variable "DB_Password" {
  type      = string
  sensitive = true
}