resource "aws_s3_bucket" "s3_bucket" {
  bucket = "rocketseat-bucket-iac-thales0591"

  tags = {
    Name = "primeiro bucket"
    Iac  = true
  }
}