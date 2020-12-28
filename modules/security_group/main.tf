provider "aws" {
  region = "${var.region}"
}

resource "aws_security_group" "security" {
  name        = "${var.security-name}"
  vpc_id      = "${var.vpc_id}"
  description = "Security Group"

  tags = {
    Name = "${var.security-name}"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
  }
}
