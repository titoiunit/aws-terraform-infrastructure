output "demo_bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "demo_bucket_arn" {
  value = aws_s3_bucket.demo.arn
}
