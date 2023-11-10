# EC2 Instance | Web Tier
resource "aws_instance" "PublicWebTemplate" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-web-subnet-1.id
  vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
  key_name               = "source_key"

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd"
    ]
  }

  connection {
    type        = "ssh"
    user        = "admin-user-00"
    private_key = file("~/.ssh/source_key.pem") # Replace with your private key path
    host        = self.public_ip
  }

  tags = {
    Name = "web-asg"
  }
}

# EC2 Instance | App Tier
resource "aws_instance" "private-app-template" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private-app-subnet-1.id
  vpc_security_group_ids = [aws_security_group.ssh-security-group.id]
  key_name               = "source_key"

  tags = {
    Name = "app-asg"
  }
}