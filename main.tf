provider "aws" {
  region = var.aws_region
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${terraform.workspace}-web-server"
  }
}

# RDS Instance
#resource "aws_db_instance" "db" {
#  allocated_storage    = var.rds_allocated_storage
#  engine               = var.rds_engine
 # engine_version       = var.rds_engine_version
#  instance_class       = var.rds_instance_class
#  db_name                 = var.rds_db_name
#  username             = var.rds_username
#  password             = var.rds_password
#  skip_final_snapshot  = true
#  tags = {
#    Name = "${terraform.workspace}-database"
#  }
#}

# S3 Bucket
resource "aws_s3_bucket" "static_content" {
  bucket = "${terraform.workspace}-static-content-demo"
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "static_content_versioning" {
  bucket = aws_s3_bucket.static_content.id

  versioning_configuration {
    status = "Enabled"
  }
}
