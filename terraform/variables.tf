variable "aws_region" {
  description = "AWS region in which to deploy the demonstration infrastructure"
  type        = string
  default     = "eu-west-1"
}

variable "demo_bucket_name" {
  description = "Globally unique name for the secure demonstration S3 bucket"
  type        = string
}
