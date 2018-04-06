provider "aws" {
  region     = "${var.aws_region}"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "${var.s3_bucket}"
  acl    = "private"
  tags = "${var.s3_bucket_tags}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}