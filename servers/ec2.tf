resource "aws_instance" "frontend" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "frontend-tf"
    }

}

resource "aws_route53_record" "frontend" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "frontend.sstech.store"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_IP]
  
}

resource "aws_instance" "catalogue" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "catalogue-tf"
    }

}

resource "aws_instance" "mongodb" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "mongodb-tf"
    }

}

resource "aws_instance" "user" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "user-tf"
    }

}

resource "aws_instance" "cart" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "cart-tf"
    }

}

resource "aws_instance" "shipping" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "shipping-tf"
    }

}

resource "aws_instance" "payment" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "payment-tf"
    }

}

resource "aws_instance" "dispatch" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "dispatch-tf"
    }

}

resource "aws_instance" "redis" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "redis-tf"
    }

}

resource "aws_instance" "mysql" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "mysql-tf"
    }

}

resource "aws_instance" "rabbitmq" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "rabbitmq-tf"
    }

}





