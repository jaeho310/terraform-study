provider "aws" {
  # profile이 있다면 profile을 입력해주고 없다면 주석처리합니다.
  # 해당설정이 있을경우에는 ~/.aws/config의 프로필을 따라가고
  # 해당설정이 없는경우 ~/.aws/credentials를 따라갑니다.
#  profile = "your profile"
  region = "ap-northeast-2"
}

# resource는 인프라 자원을 의미합니다
# aws_s3_bucket이라는 인프라 자원의 이름을 my_s3_study로 설정(내 소스코드에서 사용되는 리소스의 이름)
# bucket의 이름은 tmy-terraform-bucket-01으로 생성하라는 설정입니다
resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "my-terraform-bucket-01"
}