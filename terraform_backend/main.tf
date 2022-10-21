provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "bucket-backend" {
  bucket = "comphass-infra-terraform-state-backend"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = false // need to change to true when dev finish
  }
  tags = {
    Name = "backend-S3"
  }
}