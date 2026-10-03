
resource "azurerm_network_security_group" "nsg" {
  name                = var.nsgname
  location            = var.nsglocation
  resource_group_name = var.r-name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = var.sbnet
  network_security_group_id = azurerm_network_security_group.nsg.id
}

