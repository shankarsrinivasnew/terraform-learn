data "aws_ami" "myamir" {
  most_recent = true
  owners      = ["973714476881"]
  name_regex  = "Centos-8-DevOps-Practice"

}
resource "aws_instance" "myec2r" {
  ami                    = data.aws_ami.myamir.image_id
  instance_type          = var.type
  vpc_security_group_ids = ["${var.sgid}"]
  tags = {
    Name = "${var.component}-${var.env}"
  }
}

variable "component" {
  
}

variable "type" {
  
}   

variable "env" {
  
}

variable "sgid" {
  
}   

output "myeceo_ip" {
  value = aws_instance.myec2r.private_ip
}

