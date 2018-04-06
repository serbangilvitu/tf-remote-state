variable "s3_bucket" {
  type = "string"
}

variable "aws_region" {
  type = "string"
}

provider "aws" {
  region     = "${var.aws_region}"
}


resource "aws_s3_bucket" "b" {
  bucket = "${var.s3_bucket}"
  acl    = "private"

  tags {
    Name        = "Terraform Remote State"
    Environment = "Dev"
  }
}