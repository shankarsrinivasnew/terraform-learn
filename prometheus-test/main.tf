
resource "aws_spot_instance_request" "node1" {
  ami                    = "ami-09badaa7430c2894e"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-094864f55a54f2a12"]
  wait_for_fulfillment   = true
  subnet_id = "subnet-0ae39aa246d2fe8a4"

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}

resource "aws_spot_instance_request" "node2" {
  ami                    = "ami-09badaa7430c2894e"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-094864f55a54f2a12"]
  wait_for_fulfillment   = true
  subnet_id = "subnet-0ae39aa246d2fe8a4"

  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}