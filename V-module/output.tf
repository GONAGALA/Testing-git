output "vnet" {
    value = azurerm_virtual_network.vnet.name
}

output "sub" {
    value = azurerm_subnet.subnet.id
}