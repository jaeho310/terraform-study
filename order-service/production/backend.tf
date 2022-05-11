terraform {
  backend "s3" {
    bucket         = "state-bucket.example.com" # s3 버킷명 중복되면 안됩니다.
    key            = "aws/order_service/terraform.tfstate" # s3 내에서 저장되는 경로를 의미합니다.
    region         = "ap-northeast-2"
#    dynamodb_table = "terraform-lock" # 여러명이 작업할때 문제가 생기지 않게 하기 위해서 nosql dynamodb_table을 사용할 수 있습니다.
#    profile = "your profile" # profile이 존재한다면 추가합니다.
  }
}