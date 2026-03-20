output "Rg-name-output" {
    description = "name of the resource group"
   # <resource_type>.<local_name>.<attribute>
    value = azurerm_resource_group.RG.name 
}

output "location-output" {
    description = "location of the resource group"
   # <resource_type>.<local_name>.<attribute>
    value = azurerm_resource_group.RG.location 
}

output "resource_group_id" {
    description = "id of the resource group"
   # <resource_type>.<local_name>.<attribute>
    value = azurerm_resource_group.RG.id
  
}