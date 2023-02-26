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
  records = ["aws_instance.frontend.private_ip"]
  
}

resource "aws_instance" "catalogue" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "catalogue-tf"
    }

}

resource "aws_route53_record" "catalogue" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "catalogue.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.catalogue.private_ip"]
  
}

resource "aws_instance" "mongodb" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "mongodb-tf"
    }

}

resource "aws_route53_record" "mongodb" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "mongodb.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mongodb.private_ip"]
  
}

resource "aws_instance" "user" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "user-tf"
    }

}

resource "aws_route53_record" "user" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "user.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.user.private_ip"]
  
}


resource "aws_instance" "cart" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "cart-tf"
    }

}

resource "aws_route53_record" "cart" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "cart.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.cart.private_ip"]
  
}


resource "aws_instance" "shipping" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "shipping-tf"
    }

}

resource "aws_route53_record" "shipping" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "shipping.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.shipping.private_ip"]
  
}

resource "aws_instance" "payment" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "payment-tf"
    }

}

resource "aws_route53_record" "payment" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "payment.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.payment.private_ip"]
  
}


resource "aws_instance" "dispatch" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "dispatch-tf"
    }

}

resource "aws_route53_record" "dispatch" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "dispatch.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.dispatch.private_ip"]
  
}


resource "aws_instance" "redis" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "redis-tf"
    }

}

resource "aws_route53_record" "redis" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "redis.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.redis.private_ip"]
  
}

resource "aws_instance" "mysql" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "mysql-tf"
    }

}

resource "aws_route53_record" "mysql" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "mysql.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mysql.private_ip"]
  
}

resource "aws_instance" "rabbitmq" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    tags = {
        Name = "rabbitmq-tf"
    }

}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "aZ0607165JC9NKEPWSMH2"
  name    = "rabbitmq.sstech.store"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.rabbitmq.private_ip"]

}

output "rabbitmypulicip" {
  value = aws_instance.rabbitmq.public_ip
}





