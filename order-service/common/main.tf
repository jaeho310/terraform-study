module "order_service_main" {
  source = "../../common/s3"
  bucket_tag = "order-service-bucket"
  bucket_name = var.bucket_name
}
