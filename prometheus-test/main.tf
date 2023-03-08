
resource "aws_spot_instance_request" "test1"  {
    ami =  "ami-09badaa7430c2894e"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    wait_for_fulfillment = true
    tags = {
        Name = "prom-1"
    }

}

resource "aws_spot_instance_request" "test2"  {
    ami =  "ami-09badaa7430c2894e"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-094864f55a54f2a12" ]
    wait_for_fulfillment = true

    tags = {
        Name = "prom-2"
    }

}