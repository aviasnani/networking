output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "instance_url" {
  value = "http://$(aws_instance.my_ec2.public_ip)"
}
