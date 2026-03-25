resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  resource_group_name             = var.rg_name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  disable_password_authentication = false

  #2 pain-point - hardcoded
  #hardcoded password - will take the value from parent module
  admin_password = var.admin_password

  #passing the nic id to the vm module
  network_interface_ids = [var.nic_id]

  os_disk {
    name                 = var.os_disk_name
    caching              = var.os_disk_caching              #readwrite
    storage_account_type = var.os_disk_storage_account_type #Standard_LRS



  }
  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }


}