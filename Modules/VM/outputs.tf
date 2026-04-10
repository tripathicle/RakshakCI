output "vm_name" {
  value = azurerm_virtual_machine.vm.name
}

output "vm_id" {
  value = azurerm_virtual_machine.vm.id
}
output "vm_location" {
  value = azurerm_virtual_machine.vm.location
}
output "vm_resource_group_name" {
  value = azurerm_virtual_machine.vm.resource_group_name
}
output "vm_size" {
  value = azurerm_virtual_machine.vm.vm_size
}
