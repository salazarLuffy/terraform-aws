resource "aws_db_instance" "db" {
  identifier            = var.rds_identifier
  allocated_storage     = 20
  max_allocated_storage = 1000
  storage_type          = "gp2"
  engine                = var.rds_engine
  instance_class        = var.rds_instance_class
  username              = var.rds_username
  password              = var.rds_password
  skip_final_snapshot   = true
  publicly_accessible   = true
}
