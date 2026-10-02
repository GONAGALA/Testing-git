resource "azurerm_virtual_network" "vnet" {
    name = "vnet1"
    location = "south india"
  resource_group_name = "gr1"
  address_space  = ["10.0.0.0/16"]
}

