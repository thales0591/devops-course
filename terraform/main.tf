resource "aws_s3_bucket" "s3_bucket" {
  bucket = "rocketseat-bucket-iac-thales0591-${terraform.workspace}"

  tags = {
    Name = "primeiro bucket"
    Iac  = true
  }
}