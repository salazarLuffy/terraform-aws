variable "profile" {
  description = "The aws profile for deploying"
  type        = string
  default     = "default"
}
variable "region" {
  description = "The aws region where the infrastructure will be created"
  type        = string
  default     = "ap-south-1"
}
# variable "public_key" {
#   description = "The public key using which the key pair will be generated."
#   type        = string
# }

variable "public_key_name" {
  description = "The public key pair name."
  type        = string
}
