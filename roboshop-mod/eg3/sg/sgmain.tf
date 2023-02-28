resource "aws_security_group" "mysgr" {
    name = "${var.mysgtag}-${var.env}"

    ingress {
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
    Name = var.mysgtag
  }
}

variable "mysgtag" {
  
}

variable "env" {
  
}

output "mysgo" {
    value = aws_security_group.mysgr.id
  
}

