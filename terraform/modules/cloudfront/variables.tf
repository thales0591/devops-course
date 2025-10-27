variable "origin_id" {
  type        = string
  description = "Id do bucket s3"
}

variable "bucket_domain_name" {
  type        = string
  description = "URL do bucket s3"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Classe de preço da CDN"
}

variable "cdn_tags" {
  type        = map(string)
  description = "Array de tags para o módulo do cloudfront"
}
