provider "aws" {
  region = "{{ $sys.deploymentCell.region }}"
}

# Terraform to create an S3 bucket
resource "aws_s3" "my_bucket" {
  bucket = "{{ $sys.id }}-bucket"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}