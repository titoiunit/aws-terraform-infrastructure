terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_cloudwatch_log_group" "rce_43" {
  name              = "/rce-43/aws-terraform-infrastructure-main"
  retention_in_days = 1

  tags = {
    Project    = "RCE-43"
    ManagedBy  = "Terraform"
    Repository = "aws-terraform-infrastructure"
    Branch     = "main"
  }
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.rce_43.name
}
