provider "aws" {
#  profile = "your profile"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = {
    name=var.bucket_tag
  }
}