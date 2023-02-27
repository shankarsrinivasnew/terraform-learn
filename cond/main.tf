resource "aws_instance" "myec2" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = var.instance_type == ""? "t2.micro" : "t3.large"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "cond11"
    }

}

resource "aws_instance" "myec22" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t2.micro"
    count = var.count == ""? 1 : var.counted
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "count"
    }

}

variable "instance_type" {}
variable "counted" {}