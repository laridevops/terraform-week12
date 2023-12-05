resource "aws_iam_group" "DevOps" {
  name = "DevOps"
}

resource "aws_instance" "myserver" {
  ami           = data.aws_ami.ami1.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_key.key_name

  depends_on = [aws_iam_group.DevOps, aws_key_pair.ec2_key]
}