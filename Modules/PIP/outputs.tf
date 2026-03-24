output "pip_id" {
  description = "ID of the Public IP"
  value       = azurerm_public_ip.pip.id
}
output "pip_ip_address" {
  description = "IP Address of the Public IP"
  value       = azurerm_public_ip.pip.ip_address
}
output "pip_name" {
  description = "Name of the Public IP"
  value       = azurerm_public_ip.pip.name
}
output "pip_location" {
  description = "Location of the Public IP"
  value       = azurerm_public_ip.pip.location
}
output "pip_allocation_method" {
  description = "Allocation method of the Public IP"
  value       = azurerm_public_ip.pip.allocation_method
}
output "pip_resource_group_name" {
  description = "Resource Group Name of the Public IP"
  value       = azurerm_public_ip.pip.resource_group_name
}

