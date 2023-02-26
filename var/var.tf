 /* variable "myvar" {
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
} */

variable "normal" {
  default = "normal"
}

variable "list" {
    default = [ "list" , "sss", 100, true ]
  
}

variable "map" {
    default = {
        a = 1
        b = "two"
        c = true
    }
  
}

output "types" {
    value = " normal value is ${var.normal} and list value is ${var.list[1]} and map value is ${var.map["b"]} "

}