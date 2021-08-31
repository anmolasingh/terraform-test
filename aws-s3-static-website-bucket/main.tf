resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = var.my_acl
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
    index_document = "index4.html"
    error_document = "error12.html"
  }

  tags = var.tags
}
