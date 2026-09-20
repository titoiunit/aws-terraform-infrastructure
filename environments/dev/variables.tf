variable "aws_region" {
  description = "AWS region in which to deploy resources"
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "Globally unique name for the development S3 bucket"
  type        = string
}
