output "nic_name" {
    description = "Name of the Network Interface"
    value       = azurerm_network_interface.Nic.name
}
output "nic_id" {
    description = "ID of the Network Interface"
    value       = azurerm_network_interface.Nic.id
}
output "nic_location" {
    description = "Location of the Network Interface"
    value       = azurerm_network_interface.Nic.location
}
output "nic_rg_name" {
    description = "Resource Group Name of the Network Interface"
    value       = azurerm_network_interface.Nic.resource_group_name
}
output "nic_ip_config_name" {
    description = "Name of the Network Interface IP Configuration"
    value       = azurerm_network_interface.Nic.ip_configuration[0].name
}
output "nic_subnet_id" {
    description = "ID of the Subnet"
    value       = azurerm_network_interface.Nic.ip_configuration[0].subnet_id
}
output "nic_private_ip_address_allocation" {
    description = "Allocation method for the Private IP Address"
    value       = azurerm_network_interface.Nic.ip_configuration[0].private_ip_address_allocation
}
