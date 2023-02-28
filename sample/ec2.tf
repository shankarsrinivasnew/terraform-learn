data "aws_ami" "myami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "myec2" {
    ami =  "${aws_ami.myami.image_id}"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "sample"
    }

}