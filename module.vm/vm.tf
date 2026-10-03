resource "azurerm_windows_virtual_machine" "vm" {
    name = var.vmname
    location = var.vm-location
  resource_group_name = var.r-name
  size          = var.size
  admin_username = var.user 
  admin_password =  var.pass 

   network_interface_ids = [var.nic-id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

