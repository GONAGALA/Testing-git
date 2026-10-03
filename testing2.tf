resource "azurerm_public_ip" "ip" {
    name = "ip1"
  allocation_method = "Static"
  location = "south india"
  resource_group_name = "rg2"

}

