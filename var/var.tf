variable "myvar" {
  default = "shankar"
}

output "myoutput" {
  value = var.myvar
}