locals {
  rg-name   = "${var.business_unit}-${var.environment_name}-${var.resource_group_name}"
  vnet-name = "${var.business_unit}-${var.virtual_network_name}"

  service-name = "Demo Services"
  owner        = "Me"
  common_tags = {
    Service = local.service-name
    Owner   = local.owner
  }

  vnet-address-space     = (var.environment_name == "dev" ? var.vn_address_space_dev : var.vn_address_space_all)
  vnet-address-space_not = (var.environment_name != "dev" ? var.vn_address_space_all : var.vn_address_space_dev)
}
