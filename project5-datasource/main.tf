resource "aws_instance" "server1" {
  ami = data.aws_ami.ami1.image_id
  key_name = data.aws_instance.demo.key_name
  instance_type = data.aws_instance.demo.instance_type
tags = {
    name = "myserver"
}
}