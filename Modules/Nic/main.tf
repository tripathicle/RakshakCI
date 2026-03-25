resource "azurerm_network_interface" "Nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {

    name = var.nic_ip_config_name

    #1- Pain-Pointing the subnet id and pip id

    #subnet id - will take the vale from parent module 
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    #public ip address id - will take the value from parent module
    public_ip_address_id = var.public_ip_id
  }


}

resource "azurerm_network_interface_security_group_association" "nsg-attach" {
  network_interface_id      = azurerm_network_interface.Nic.id
  network_security_group_id = var.nsg_id

}