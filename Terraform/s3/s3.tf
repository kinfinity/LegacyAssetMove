resource "aws_s3_bucket" "name" {
  acl = "private"
  bucket  = var.bucket_name

}