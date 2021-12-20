
resource "aws_iam_user" "s3-storage-user" {
  name = "kokou-${var.iam_user}"
  
  tags = {
    use-case = "private s3 access"
  }

}