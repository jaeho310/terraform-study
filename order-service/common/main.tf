module "common_main" {
  source = "../../common/s3"
  bucket_tag = "order-service-bucket"
  bucket_name = var.bucket_name
}