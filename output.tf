output "ec2_hostname" {
  value = module.aws_ec2_with_local_key.ec2_hostname
}

output "ec2_hostip" {
  value = module.aws_ec2_with_local_key.ec2_hostip
}


output "s3_accessKeyId" {
  value = module.aws_s3_user.s3_user_accessKeyId
}

output "ses_accessKeyId" {
  value = module.aws_ses_user.ses_user_accessKeyId
}

output "sns_accessKeyId" {
  value = module.aws_sns_user.sns_user_accessKeyId
}
