resource "azurerm_stroage_account" "stg" {
    name  = "stg1"
    locaion  = "south india"
    resource_group_name = "gr1"
    access_tire   = "standard"
    replaiction   = "LRS"
    
}

