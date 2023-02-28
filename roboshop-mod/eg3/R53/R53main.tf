resource "aws_route53_record" "myr53r" {
  zone_id = "Z0607165JC9NKEPWSMH2"
  name    = "${var.component}.sstech.store"
  type    = "A"
  ttl     = 30
  records = [var.ip]
}

variable "component" {
  
}

/* variable "env" {
} */

variable "ip" {
  
}