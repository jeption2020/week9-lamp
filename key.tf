
# Generates a secure private and public key  and encodes it as PEM
resource "tls_private_key" "aws_lightsail_instance_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair
resource "aws_lightsail_key_pair" "aws_lightsail_instance_key" {
  name       = "week9d2"
  public_key = tls_private_key.aws_lightsail_instance_key.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "week9d2.pem"
  content  = tls_private_key.aws_lightsail_instance_key.private_key_pem
}