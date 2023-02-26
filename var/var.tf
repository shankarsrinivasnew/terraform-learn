variable "myvar" {
  default = "shankar"
}

output "myoutput" {
  value = var.myvar
}

variable "myinit" {
  default = "srinivas"
}

output "myiniout" {
  value = var.myinit
}