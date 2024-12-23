# resource "null_resource" "demo" {
#   count = 10
# }
#

resource "null_resource" "demo" {
  count = length(var.demo)

  provisioner "local-exec" {
    command = "echo ${var.demo[count.index]}"
  }
}

variable "demo" {
  default = [
    "orange",
    "apple",
    "banana"
  ]
}


