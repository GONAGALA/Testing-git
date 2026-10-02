resource "azurerm_resource_group"  "rg" {
    name    = "rg1"
  location = "central india" 

  tags = {
     name  = "gsk"
  }
}

resource "azurerm_resource_group" "rg1" {

  name = "name1" 
  location = "central india"

}


