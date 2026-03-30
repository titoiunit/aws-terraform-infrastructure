terraform {
  required_version = "= 1.14.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "428516841589-aws-terraform-infrastructure-tfstate-eu-west-1"
    key          = "rce-43/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}
