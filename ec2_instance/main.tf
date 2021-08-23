
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27" 
    }
  }
  require_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
}
resource "aws_instance" "app_server" {
  ami = "ami-0443305dabd4be2bc"
  instance_type = "t2.micro"
}
tags {
  name = "Bijon_TF"
}
