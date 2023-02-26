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

variable "cli" {
    default = "notcli"
}
output "mycli" {
  value = var.cli
}

variable "input" {
  
}

output "input" {
  value = var.input
}