output "nic_name" {
  description = "Name of the Network Interface"
  value       = azurerm_network_interface.nic.name
}
output "nic_id" {
  description = "ID of the Network Interface"
  value       = azurerm_network_interface.nic.id
}
