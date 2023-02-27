module "ssmodule" {
  source = "./ec2"
  for_each = var.myvar
  instance_type = each.value["type"]
  component = each.value["name"]
}


variable "myvar" {
    default = {
        catalogue = {
            name = "catalogue",
            type = "t2.micro"
        }

        cart = {
            name = "cart",
            type = "t2.micro"
        }

        user = {
            name = "user",
            type = "t2.micro"
        }

    }
  
}