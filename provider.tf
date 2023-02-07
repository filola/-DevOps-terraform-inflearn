provider "aws" {
  region = "ap-northeast-2"
}

// cloudfront의 경우 인증서가 버지니아 북부에 밖에 생성이 안되므로
provider "aws" {
  alias = "virginia"
  region = "us-east-1"
}
