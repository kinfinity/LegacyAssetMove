resource "aws_s3_bucket" "log_bucket" {
  bucket = "kokou-logs"
  acl    = "log-delivery-write"
}