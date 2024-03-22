terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "env0-bucket2" {
  bucket = "env0-s3-bucket-na"
  acl    = "private"

  tags = {
    Name        = "My bucket of env0"
    Environment = "Dev"
    Owner = "Saksham"
  }
}

variable "aws_access_key" {
  
}

variable "aws_secret_key" {
  
}
