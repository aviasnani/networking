resource "aws_instance" "my_ec2" {
  ami = "ami-03fd334507439f4d1"  # Updated AMI ID
  instance_type = "t2.micro"
  key_name = aws_key_pair.random_key.key_name  # Use the key pair created above
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
}