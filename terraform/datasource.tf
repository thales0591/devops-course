data "aws_s3_bucket" "bucket" {
  bucket = "rocketseat-bucket-iac-thales0591-${terraform.workspace}"
}