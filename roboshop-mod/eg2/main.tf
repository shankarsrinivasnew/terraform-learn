module "myec2" {
  source    = "./ec2"
  for_each = "${var.servers}"
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id = ["module.mysg.my_sg_id"]

}

module "mysg" {
  source = "./sg"
}

variable "servers" {
  default = {
    catalogue = {
      name = "catalogue",
      type = "t3.micro"
    }

    cart = {
      name = "cart",
      type = "t3.micro"
    }

    user = {
      name = "user",
      type = "t3.micro"
    }

    frontend = {
      name = "frontend",
      type = "t3.micro"
    }

    shipping = {
      name = "shipping",
      type = "t3.micro"

    }
    mysql = {
      name = "mysql",
      type = "t3.micro"

    }

  }

}
