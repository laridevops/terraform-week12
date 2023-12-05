# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "myserver" {
  ami                         = "ami-0fa1ca9559f1892ec"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2key"
  monitoring                  = false
  security_groups             = ["launch-wizard-1"]
  subnet_id                   = "subnet-020f37e706e79f7b2"
  tags = {
    Name = "myserver"
    Env  = "Dev"
    Team = "DevOps"
  }
}
