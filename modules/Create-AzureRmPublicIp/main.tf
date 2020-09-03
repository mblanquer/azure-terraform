resource "azurerm_public_ip" "publicip" {
  name =     var.pip_name
  location = var.pip_location
  tags =     var.pip_tags
  resource_group_name = var.rg_name
  allocation_method = var.pip_allocation_method
}