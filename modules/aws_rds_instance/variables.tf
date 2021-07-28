variable "rds_identifier" {
  description = "The name of the rds instance"
  type        = string
  default     = "demo"
}

variable "rds_engine" {
  description = "The engine of the rds instance"
  type        = string
  default     = "postgres"
}

variable "rds_instance_class" {
  description = "The instance class of the rds instance"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_username" {
  description = "The RDS root user username"
  type        = string
}

variable "rds_password" {
  description = "The RDS root user password"
  type        = string
}



