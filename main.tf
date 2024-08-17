


resource "aws_lightsail_instance" "lamp" {
  name         = "lamp"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "micro_2_0"
  availability_zone = "us-east-1a"
  key_pair_name = aws_lightsail_key_pair.aws_lightsail_instance_key.name

  #user_data = file("LAMP-install.sh")
}
