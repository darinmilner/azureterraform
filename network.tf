resource "azurerm_virtual_network" "myvnet" {
  // for_each            = var.environment  #For creating many virtual networks
  name          = local.vnet-name
  address_space = local.vnet-address-space
  // address_space       = [var.vn_address_space[0]]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags                = local.common_tags
}

//Virtual network count and if statement demo
resource "azurerm_virtual_network" "myvnet2" {
  count               = var.environment_name == "dev" ? 1 : 2
  name                = "${var.business_unit}-${var.environment_name}-${var.virtual_network_name}-${count.index}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags                = local.common_tags
}
