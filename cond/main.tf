resource "aws_instance" "myec2" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = var.instance_type
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "conditional"
    }

}

variable "instance_type" {}