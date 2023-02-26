data "aws_ami" "myami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "myami" {
    value = data.aws_ami.myami.image_id
}