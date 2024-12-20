data "azurerm_resource_group" "example" {
  name = "project-setup-1"
}


output "rg" {
  value = data.azurerm_resource_group.example
}

provider "azurerm" {
  features {}
  subscription_id = "7b6c642c-6e46-418f-b715-e01b2f871413"
}
