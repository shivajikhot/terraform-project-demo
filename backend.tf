terraform {
  backend "s3" {
    bucket = "terraform-backend-statefil"
    key    = "env"
    region = "us-east-1"
    encrypt = true
  }
}
