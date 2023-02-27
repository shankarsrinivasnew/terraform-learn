resource "aws_instance" "myec2" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  count                  = length(var.tags)
  vpc_security_group_ids = ["sg-094864f55a54f2a12"]
  tags = {
    Name = var.tags[count.index]
  }

}

variable "servers" {
  default = ["frontend", "catalogue", "cart", "user"]
}

variable "tags" {
  default = {
    catalogue = {
      Name        = "catalogue"
      environment = "development"
    }
    cart = {
      Name        = "cart"
      environment = "development"
    }
    user = {
      Name        = "user"
      environment = "development"

    }
    frontend = {
      Name        = "frontend"
      environment = "development"
    }

  }

}
