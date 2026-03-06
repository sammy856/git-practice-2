resource "azurerm_resource_group" "rgs" {
  name     = var.name
  location = var.location
}


# we are in branch1 now