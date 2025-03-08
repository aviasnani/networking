resource "aws_key_pair" "hello_key" {
  key_name   = "hellothisismykey"  # Name of the key pair
  public_key = file("~/.ssh/id_rsa.pub")  # Path to your public key file (adjust if needed)
}