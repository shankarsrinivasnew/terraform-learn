data "aws_ami" "myami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "myec2" {
    ami =  data.aws_ami.myami.image_id
    instance_type = var.instance_type
    vpc_security_group_ids = ["${var.sg_id}"]
    tags = {
        Name = var.component
    }

}

variable "instance_type" {}
variable "sg_id" {}
variable "component" {}