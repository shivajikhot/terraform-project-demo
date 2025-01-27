provider "aws" {
  region = var.aws_region
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.environment}-web-server"
  }
}

# RDS Instance
resource "aws_db_instance" "db" {
  allocated_storage    = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = var.rds_db_name
  username             = var.rds_username
  password             = var.rds_password
  skip_final_snapshot  = true
  tags = {
    Name = "${var.environment}-database"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "static_content" {
  bucket = "${var.environment}-static-content"
  acl    = "private"

  versioning {
    enabled = true
  }
}
