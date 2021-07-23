variable "public_key" {
  description = "The public key using which the key pair will be generated."
  type        = string
}

variable "user_data" {
  description = "The user date to be initialized while the server starts up"
  type        = string
}

variable "ec2_instance_type" {
  description = "The type of the ec2 instance to be provisioned"
  type        = string
  default     = "t2.micro"
}

variable "ec2_instance_tags" {
  description = "Tags to apply to resources created by Ec2 module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "Server"
  }
}
