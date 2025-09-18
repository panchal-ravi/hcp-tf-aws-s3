resource "random_id" "bucket_suffix" {
  byte_length = 2 # 4 hex chars
}

resource "aws_s3_bucket" "example" {
  bucket = "hcp-tf-bucket-${random_id.bucket_suffix.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
