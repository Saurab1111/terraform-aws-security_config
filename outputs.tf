output "config_recorder_name" {
  description = "Name of the AWS Config configuration recorder."
  value       = aws_config_configuration_recorder.this.name
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket storing AWS Config data."
  value       = aws_s3_bucket.config.arn
}

output "iam_role_arn" {
  description = "ARN of the IAM role used by AWS Config."
  value       = aws_iam_role.config.arn
}
