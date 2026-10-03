resource "azurerm_public_ip" "pip" {

    name = var.ipname
  resource_group_name = var.r-name
  location = var.ip-location
  allocation_method = "Static"
  
}