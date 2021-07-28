provider "aws" {
  profile = var.profile
  region  = var.region
}

module "aws_ec2_with_named_key" {
  source            = "./modules/aws_ec2_with_named_key"
  public_key_name   = var.public_key_name
  ec2_instance_type = "t2.micro"
  user_data         = file("./install-packages.sh")
}

module "aws_s3_user" {
  source       = "./modules/aws_s3_user"
  s3_user_name = "s3User-test"
}

module "aws_s3_bucket" {
  source      = "./modules/aws_s3_bucket"
  bucket_name = "salazarluffy"
}

module "aws_ses_user" {
  source        = "./modules/aws_ses_user"
  ses_user_name = "sesUser-test"
}

module "aws_sns_user" {
  source        = "./modules/aws_sns_user"
  sns_user_name = "snsUser-test"
}



