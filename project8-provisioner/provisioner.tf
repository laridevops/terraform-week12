resource "null_resource" "null" { #container used to run a provisioner
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("week12b.pem")
    host        = aws_instance.myserver.public_dns
    timeout = "10m"
  }
  
  provisioner "local-exec" { #this is for command to run locally
    command = "echo hello"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "mkdir DevOps",
      "pwd",
      "nproc"
    ]
  }

  provisioner "file" {
    source      = "week12b.pem"
    destination = "/tmp/w.pem"
  }

  depends_on = [ aws_instance.myserver ]
}