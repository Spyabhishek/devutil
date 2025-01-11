provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "sg" {
  name = "tf-allow-ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "server" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  key_name      = "ec2-docker-load"

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "tf-server"
  }
}
