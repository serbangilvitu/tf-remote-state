variable "s3_bucket" {
  type = "string"
}

variable "aws_region" {
  type = "string"
}

variable "s3_bucket_tags" {
  type = "map"
}

provider "aws" {
  region     = "${var.aws_region}"
}

resource "aws_s3_bucket" "b" {
  bucket = "${var.s3_bucket}"
  acl    = "private"
  tags = "${var.s3_bucket_tags}"
}

output "s3_backend_id" {
  value = "${aws_eip.ip.public_ip}"
}