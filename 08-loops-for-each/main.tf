resource "local_file" "foo" {
  for_each = var.demo
  content  = each.value
  filename = "/tmp/${each.key}"
}


variable "demo" {
  default = {
    ORANGE = "orange"
    BANANA = "banana"
  }
}


