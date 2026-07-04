resource "random_string" "bucket_suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-${random_string.bucket_suffix.result}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}