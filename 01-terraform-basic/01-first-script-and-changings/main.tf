terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
  profile = "tf-w10-wabastos"
}
resource "aws_s3_bucket" "example" {
  bucket = "bucket-do-wagner-criado-por-terraform-em-2024-01"

  tags = {
    CreatedAt        = "2024-06-19"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
    }
  }