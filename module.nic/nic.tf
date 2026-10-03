resource "azurerm_network_interface" "nic" {
    name    = var.nicname
  location = var.nic-location
  resource_group_name = var.r-name

  ip_configuration {
    name = "internal"
    subnet_id = var.sub-id 
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = var.public-ip
  }
}




