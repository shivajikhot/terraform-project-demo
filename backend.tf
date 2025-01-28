terraform {
  backend "s3" {
    bucket = "terraform-backend-statefil"
    key    = "env//${workspace}.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
