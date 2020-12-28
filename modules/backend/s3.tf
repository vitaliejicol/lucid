#Creating S3 Bucket with versioning enable
provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket-name}"

  region = "${var.region}"
  acl    = "${var.acl}"

  versioning {
    enabled = "true"
  }

  lifecycle {
    prevent_destroy = false
  }

  tags = {
  	Name = "${var.bucket-name}"
  }
}
