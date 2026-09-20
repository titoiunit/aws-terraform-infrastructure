output "demo_bucket_name" {
  description = "Name of the secure demonstration bucket"
  value       = module.secure_s3.bucket_name
}

output "demo_bucket_arn" {
  description = "ARN of the secure demonstration bucket"
  value       = module.secure_s3.bucket_arn
}
