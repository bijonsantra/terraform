terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27" 
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}
resource "aws_s3_bucket" "drive" {
  bucket = "bijon-tf-test-bucket"
  acl    = "public-read"
  tags = {
    Name        = var.bucket_name
    Environment = var.bucket_env
  }
}
