variable "ssh_public_key" {
  description = "SSH public key to create the key pair"
  type        = string
}


resource "aws_key_pair" "random_key" {
  key_name   = "random_key"  
  public_key = var.ssh_public_key  
}