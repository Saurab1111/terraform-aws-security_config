variable "name_prefix" {
  description = "Prefix used for AWS Config resources."
  type        = string
  default     = "security-config"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket used for AWS Config snapshots and configuration history."
  type        = string
  default     = "security-config-audit-bucket"
}

variable "include_global_resource_types" {
  description = "Whether to include global resource types in recording."
  type        = bool
  default     = true
}

variable "sns_topic_arn" {
  description = "Optional SNS topic ARN for AWS Config notifications."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to supported resources."
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
