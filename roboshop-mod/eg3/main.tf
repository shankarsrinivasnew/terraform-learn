module "myec2m" {
  source = "./ec2"
  for_each = var.servers
  component = each.value["name"]
  type = each.value["type"]
  sgid = module.mysgm.mysgo

}

module "mysgm" {
  source = "./sg"
}

module "my53m"  {
    source = "./R53"
    for_each = var.servers
    ip = module.myec2m[each.value["name"]].myeceo_ip
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

variable "env" {
    default = "dev"
  
}
variable "mysgtag" {
  default = "myownsg"
}
