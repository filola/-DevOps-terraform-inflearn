resource "aws_s3_bucket" "test" {
  bucket = "terraform-inflearn-chs"
}

resource "aws_s3_bucket" "swit" {
  bucket = "swit-test-0808"
}
