data "aws_instance" "demo" {
  instance_id = "i-03f05f3c3feac9cc4"
}

data "aws_ami" "ami1" {
  #executable_users = ["self"]
  most_recent      = true
  #name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}