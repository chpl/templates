terraform {
  required_version = ">= 0.12.24"
}

resource "null_resource" "null1" {
}

resource "null_resource" "null2" {
  triggers = {
    ids = null_resource.null1.id
  }
}
