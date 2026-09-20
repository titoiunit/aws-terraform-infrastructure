output "region" {
  description = "AWS region used by the development configuration"
  value       = var.aws_region
}

output "bucket_name" {
  description = "Name of the development S3 bucket"
  value       = module.secure_s3.bucket_name
}

output "bucket_arn" {
  description = "ARN of the development S3 bucket"
  value       = module.secure_s3.bucket_arn
}
