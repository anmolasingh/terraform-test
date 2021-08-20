resource "aws_s3_bucket" "c" {
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

resource "aws_s3_bucket" "e" {
  bucket = "my-tf-private-bucket-three"
  acl    = "private"

  tags = {
    Name        = "My third bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "f" {
  bucket = "my-tf-private-bucket-four"
  acl    = "private"

  tags = {
    Name        = "My fourth bucket"
    Environment = "Dev"
  }
}
