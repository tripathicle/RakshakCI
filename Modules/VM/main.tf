resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.rg_name
  #network_interface_ids = [var.nic_id]
  network_interface_ids = [var.nic_id]
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = var.os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = data.azurerm_key_vault_secret.admin_username.value
    admin_password = data.azurerm_key_vault_secret.admin_password.value
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
  
}