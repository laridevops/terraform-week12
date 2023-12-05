output "public_ip" {
  value = aws_instance.myserver.public_dns
}