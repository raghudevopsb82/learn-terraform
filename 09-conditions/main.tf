variable "a" {}

output "test" {
  value = var.a > 10 ? "a is greater than 10" : "a is lesser than 10"
}

# these condtions with combination of loop can be used to determine whether a resource to run or not.

resource "null_resource" "test" {
  count = var.a > 10 ? 1 : 0
}

# if the above expression var.a > 10 ? 1 : 0, lets say it needs to be used in 10 different places, tomorrow if we want to change the expression, it becomes a duplicate work to change in 10 places, to keep the code dry, terraform supports local resources. Which is like run time variables.

locals {
  count = var.a > 10 ? 1 : 0
}

resource "null_resource" "test1" {
  count = local.count
}


