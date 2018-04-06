variable "s3_bucket" {
  type = "string"
  description = "Desired name of the S3 bucket"
}

variable "aws_region" {
  type = "string"
  description = "AWS region to host the S3 bucket"
}

variable "s3_bucket_tags" {
  type = "map"
  description = "List of tags to be applied to the S3 bucket"
}