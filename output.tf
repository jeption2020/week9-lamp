output "public-ip" {
  value = aws_lightsail_instance.lamp

}
output "username" {
  value = aws_lightsail_instance.lamp.username

}
output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.lamp.username}@${aws_lightsail_instance.lamp.public_ip_address}"

}