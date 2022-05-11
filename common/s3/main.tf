provider "aws" {
#  profile = "your profile"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.bucket_name
}