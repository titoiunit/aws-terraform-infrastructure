terraform {
  required_version = "= 1.14.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "secure_s3" {
  source = "../../modules"

  bucket_name = var.bucket_name

  tags = {
    Project       = "aws-terraform-infrastructure"
    Environment   = "dev"
    ManagedBy     = "terraform"
    Configuration = "environments/dev"
  }
}
