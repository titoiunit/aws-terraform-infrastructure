variable "bucket_name" {
  description = "Globally unique name for the S3 bucket"
  type        = string

  validation {
    condition     = length(trimspace(var.bucket_name)) >= 3
    error_message = "bucket_name must contain at least three characters."
  }
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}
