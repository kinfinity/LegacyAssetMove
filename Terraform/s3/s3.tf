resource "aws_s3_bucket" "name" {
  acl = "private"
  id = var.bucket_name
  
}