module "s3_bucket_for_logs" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-for-logs"
  acl    = "public-read"

  # Allow deletion of non-empty bucket
  force_destroy = false

  attach_elb_log_delivery_policy = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  acl    = "private" #var.my_acl
  policy = <<EOF
{
    "Version": "2020-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
        }
    ]
}
EOF

  website {
    index_document = "index2.html"
    error_document = "error5.html"
  }

  tags = var.tags
}
