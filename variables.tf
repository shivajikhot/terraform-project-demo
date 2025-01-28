variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-west-1"  
}

# EC2 Instance variables
variable "ami_id" {
  default = "ami-07d2649d67dbe8900"
}
variable "instance_type" {
  default = "t2.micro"
}

# RDS Instance variables
#variable "rds_engine" {
#  default = "mysql"
#}
#variable "rds_engine_version" {
#  default = "8.0.34"
#}
#variable "rds_instance_class" {
#  default = "db.t3.micro"
#}
#variable "rds_allocated_storage" {
#  default = 20
#}
#variable "rds_db_name" {
#  default = "my_app_database"
#}
#variable "rds_username" {
#  default = "my_app"
#}
#variable "rds_password" {
# default = "my_app12345"
#}

# Environment name
variable "environment" {
 default = "staging"
}
