variable "s3_bucket_name" {
  type        = string
  description = "URL do bucket"
}

variable "s3_tags" {
  type        = map(string)
  description = "Array de tags para o módulo do s3"
}