module "order-service-main" {
  // 원하는 디렉토리를 가져옵니다.
  source = "../common/s3"
  // source 디렉토리에 있는 variable을 채우줍니다.
  bucket_name = "order-service-bucket-135"
}