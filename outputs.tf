output "resource-groupid" {
  description = "Resource Group ID"
  #Attribute Reference 
  value = azurerm_resource_group.myrg.id
}

output "resource-group-name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.myrg.name
}

output "virtual-network-name" {
  description = "Virtual Network Name"
  //value       = azurerm_virtual_network.myvnet[*].name
  value = azurerm_virtual_network.myvnet.name
  // sensitive   = true
}

#Outputs for mutli virtual network resources
# output "virtual-network-name-list-oneinput" {
#   description = "Virtual Network-For Loop one Input"
#   value       = [for vnet in azurerm_virtual_network.myvnet : vnet.name]
# }


# output "virtual-network-name-list-twoinputs" {
#   description = "Virtual Network-For Loop 2 Inputs"
#   value       = [for i, vnet in azurerm_virtual_network.myvnet : i]
# }


# output "virtual-network-name-map-oneinput" {
#   description = "Virtual Network-For Loop MAP one Input"
#   value       = { for vnet in azurerm_virtual_network.myvnet : vnet.id => vnet.name }
# }


# output "virtual-network-name-map-twoinputs" {
#   description = "Virtual Network-Map Two Inputs"
#   value       = { for env, vnet in azurerm_virtual_network.myvnet : env => vnet.name }
# }


# output "virtual-network-name-keysfunction" {
#   description = "Virtual Network-Keys Function"
#   value       = keys({ for env, vnet in azurerm_virtual_network.myvnet : env => vnet.name })
# }


# output "virtual-network-values-keysfunction" {
#   description = "Virtual Network-Values Function"
#   value       = values({ for env, vnet in azurerm_virtual_network.myvnet : env => vnet.name })
# }
