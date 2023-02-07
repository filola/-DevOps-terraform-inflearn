resource "aws_s3_bucket" "test" {
  bucket = "terraform-inflearn-chs"
}

resource "aws_acm_certificate" "swit" {
  provider = "aws.virginia"

  domain_name = "swit.backend.co"
  validation_method = "EMAIL"
}
