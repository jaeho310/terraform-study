module "order-service-main" {
  // 원하는 디렉토리를 가져옵니다.
  source = "../common/s3"
  // source 디렉토리에 있는 variable을 채우줍니다.
  bucket_name = "order-service-bucket-135"
}

// provider는 module을 당겨온 쪽에서 정의합니다.
provider "aws" {
#  profile = "your profile"
  region = "ap-northeast-2"
}
