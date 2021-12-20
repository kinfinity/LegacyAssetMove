resource "aws_s3_bucket" "legacy-storage" {

  bucket  = var.legacy_bucket_name
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    team          = "${var.legacy_team}"
    project_name   = "${var.project_name}"
    application   = "${var.legacy_application}"
    environment   = "${var.legacy_environment}"
    contact-email = "${var.legacy_contact_email}"
  }
  

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  lifecycle {
    ignore_changes = [bucket]
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
  }

}

# grant user access to the bucket
resource "aws_s3_bucket_policy" "legacy_bucket_policy" {
  bucket = "${aws_s3_bucket.legacy-storage.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${aws_iam_user.s3-storage-user.arn}"
      },
      "Action": [ "s3:*" ],
      "Resource": [
        "${aws_s3_bucket.legacy-storage.arn}",
        "${aws_s3_bucket.legacy-storage.arn}/*"
      ]
    }
  ]
}
EOF
}