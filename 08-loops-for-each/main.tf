resource "local_file" "foo" {
  for_each = var.demo
  content  = each.value["content"]
  filename = "/tmp/${each.key}"
}


variable "demo" {
  default = {
    APPLE = {
      content = "Apple is Good for health"
    }
    BANANA = {
      content = "Good for Vitamin"
    }
    ORANGE = {
      content = "Good for Vitamin C "
    }
  }
}



