resource "aws_instance" "demo" {
  ami = var.ami
  instance_type = var.instancetype
  availability_zone = var.instanceregion

    tags = {
    Name = var.name
  }
}