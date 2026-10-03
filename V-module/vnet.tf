resource "azurerm_virtual_network" "vnet" {
    name = var.vnet-name
  location = var.v-location
  resource_group_name = var.r-name
  address_space = var.ip-address
}


resource "azurerm_subnet" "subnet" {
    name = var.subnet
  resource_group_name = var.r-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = var.address
}