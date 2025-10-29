terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket  = "rocketseat-bucket-state-thales0591"
    region  = "us-east-2"
    key     = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile = "thales"
  region  = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_state

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket
  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [
    aws_s3_bucket.terraform_state
  ]
}