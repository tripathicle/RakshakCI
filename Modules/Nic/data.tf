data "azurerm_network_interface" "data-nic" {
  name = var.nic_name
  resource_group_name = var.rg_name
  
}

data "azurerm_subnet" "data-subnet" {
    name                 = var.subnet_name
    virtual_network_name = var.vnet_name
    resource_group_name  = var.rg_name
  
}
data "azurerm_public_ip" "data-pip" {
    name                = var.public_ip_name
    resource_group_name = var.rg_name
  
}

data "azurerm_network_security_group" "data-nsg" {
   name = var.nsg_name
   resource_group_name = var.rg_name
  
}