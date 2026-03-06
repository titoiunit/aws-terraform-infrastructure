# environments/dev/outputs.tf
output "region" {
  value       = var.aws_region
  description = "The AWS region in use"
}