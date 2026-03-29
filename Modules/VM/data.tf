data "azurerm_network_interface" "data-nic" {
    name                = var.nic_name
    resource_group_name = var.rg_name
  
}

#fetching the keyvault details using existing data source
#key-vault name is "kv"
data "azurerm_key_vault" "kv" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}  

#keyvault secret for admin username
data "azurerm_key_vault_secret" "admin_username" {
  name         = "adminusername"
  key_vault_id = data.azurerm_key_vault.kv.id
}

#keyvault secret for admin password
data "azurerm_key_vault_secret" "admin_password" {
  name         = "adminpassword"
  key_vault_id = data.azurerm_key_vault.kv.id
}