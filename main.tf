resource "azurerm_resource_group" "myrg" {
  name     = local.rg-name
  location = var.resource_group_location
  tags     = var.common-tags
}
