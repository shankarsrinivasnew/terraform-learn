module "ssmodule" {
  source = "./ec2"
  for_each = var.myvar
  instance_type = each.value["type"]
  component = each.value["name"]
}


variable "myvar" {
    default = {
        catalogue = {
            name = "catalogues",
            type = "t2.micro"
        }

        cart = {
            name = "carts",
            type = "t2.micro"
        }

        user = {
            name = "users",
            type = "t2.micro"
        }

    }
  
}