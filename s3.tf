resource "aws_s3_bucket" "b" {
  bucket = "my-tf-private-bucket-2"
  acl    = "private"

  tags = {
    Name        = "My second bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-private-bucket"
  acl    = "private"

  tags = {
    Name        = "My first bucket"
    Environment = "Dev"
  }
}
