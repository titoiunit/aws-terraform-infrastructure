provider "aws" {
  region = "eu-west-1"
}

module "secure_s3" {
  source = "../modules"

  bucket_name = "428516841589-aws-terraform-infrastructure-demo-eu-west-1"

  tags = {
    Project     = "aws-terraform-infrastructure"
    Environment = "dev"
    ManagedBy   = "terraform"
    Task        = "RCE-43"
  }
}

moved {
  from = aws_s3_bucket.demo
  to   = module.secure_s3.aws_s3_bucket.this
}

moved {
  from = aws_s3_bucket_versioning.demo
  to   = module.secure_s3.aws_s3_bucket_versioning.this
}

moved {
  from = aws_s3_bucket_public_access_block.demo
  to   = module.secure_s3.aws_s3_bucket_public_access_block.this
}

moved {
  from = aws_s3_bucket_ownership_controls.demo
  to   = module.secure_s3.aws_s3_bucket_ownership_controls.this
}
