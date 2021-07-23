variable "region" {
  description = "The aws region where the infrastructure will be created"
  type        = string
  default     = "ap-south-1"
}
variable "public_key" {
  description = "The public key using which the key pair will be generated."
  type        = string
}
