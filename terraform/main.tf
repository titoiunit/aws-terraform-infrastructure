provider "aws" {
  region = var.aws_region
}

module "secure_s3" {
  source = "../modules"

  bucket_name = var.demo_bucket_name

  tags = {
    Name        = "aws-terraform-infrastructure-demo"
    Project     = "aws-terraform-infrastructure"
    Environment = "dev"
    ManagedBy   = "terraform"
    Task        = "RCE-43"
  }
}
