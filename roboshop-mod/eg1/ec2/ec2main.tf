data "aws_ami" "myami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "myec2" {
    ami = data.aws_ami.myami.image_id
    instance_type = "${var.instance_type}"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "${var.component}"
    }

}

resource "aws_route53_record" "component" {
  zone_id = "Z0607165JC9NKEPWSMH2"
  name    = "${var.component}.sstech.store"
  type    = "A"
  ttl     = 30
  records = [aws_instance.myec2.private_ip]
  
}

variable "instance_type" {}
variable "component" {}