resource "aws_instance" "myec2" {
  for_each = var.servers
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-094864f55a54f2a12"]
  tags = {
    Name = each.value
  }

} 

/* resource "null_resource" "null" {
  count = length(var.servers)
} */

 variable "servers" {
  default = ["frontend", "catalogue", "cart"]
} 

  /* variable "mytags" {
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

}  */

