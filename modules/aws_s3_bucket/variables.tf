variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "bucket_tags" {
  description = "Tags to apply to the bucket created"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}



