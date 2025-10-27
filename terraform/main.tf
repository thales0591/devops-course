resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.org_name}-bucket-iac-thales0591-${terraform.workspace}"

  tags = {
    Name = "primeiro bucket"
    Iac  = true
  }
}