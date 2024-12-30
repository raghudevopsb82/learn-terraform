variable "a" {}

output "test" {
  value = var.a > 10 ? "a is greater than 10" : "a is lesser than 10"
}



