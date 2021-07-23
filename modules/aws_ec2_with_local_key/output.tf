output "ec2_hostname" {
  value = aws_eip.ec2_eip.public_dns
}

output "ec2_hostip" {
  value = aws_eip.ec2_eip.public_ip
}
