variable "aws_region" {
  default = "us-east-1"
}

# EC2 Instance variables
variable "ami_id" {}
variable "instance_type" {
  default = "t2.micro"
}

# RDS Instance variables
variable "rds_engine" {
  default = "mysql"
}
variable "rds_engine_version" {
  default = "8.0.34"
}
variable "rds_instance_class" {
  default = "db.t3.micro"
}
variable "rds_allocated_storage" {
  default = 20
}
variable "rds_db_name" {}
variable "rds_username" {}
variable "rds_password" {}

# Environment name
variable "environment" {}
