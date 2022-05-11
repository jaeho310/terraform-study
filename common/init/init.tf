resource "aws_s3_bucket" "state_bucket" {
  bucket = "state-bucket.example.com" # s3 버킷명 중복되면 안됩니다.
  versioning {
    enabled = true # 버킷에 버전관리 기능을 켜놓으면 파일을 이전버전으로 돌아가게 할 수 있습니다.
    # 버전관리기능이 켜진 버킷은 추후 object를 삭제할때 버전도 모두 삭제해줘야 됩니다.
  }
}

## 테라폼 state의 lock이 필요하다면 dynamodb를 사용합니다.
#resource "aws_dynamodb_table" "terraform_state_lock" {
#  name           = "terraform-lock"
#  hash_key       = "LockID"
#  billing_mode   = "PAY_PER_REQUEST"
#
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}