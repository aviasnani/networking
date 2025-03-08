variable "ssh_public_key" {
  description = "SSH public key to create the key pair"
  type        = string
}


resource "aws_key_pair" "hello_key" {
  key_name   = "hellothisismykey"  
  public_key = var.ssh_public_key  
}