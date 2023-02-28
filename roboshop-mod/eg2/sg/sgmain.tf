
resource "aws_security_group" "allow_tls" {
  name        = "allow_mod_ss"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_mod_ss"
  }
}

output "my_sg_id" {
    value = aws_security_group.allow_tls
}
