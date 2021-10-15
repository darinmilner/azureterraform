data "azurerm_resource_group" "rgds" {
  // name = azurerm_resource_group.myrg.name
  depends_on = [
    azurerm_resource_group.myrg
  ]
  name = local.rg-name
}
output "ds-rg-name" {
  value = data.azurerm_resource_group.rgds.name
}

output "ds-rg-location" {
  value = data.azurerm_resource_group.rgds.location
}

output "ds-rg-id" {
  value = data.azurerm_resource_group.rgds.id
}

