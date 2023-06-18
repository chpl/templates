variable "name" {
  default = "world"
}

resource "null_resource" "null" {
}

output "message" {
  value = "Hello ${var.name}!"
}