output "pip_id" {
  description = "ID of the Public IP"
  value       = azurerm_public_ip.pip.id
}

output "pip_name" {
  description = "Name of the Public IP"
  value       = azurerm_public_ip.pip.name
}
