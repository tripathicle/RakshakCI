data "azurerm_network_interface" "data-nic" {
    name                = var.nic_name
    resource_group_name = var.rg_name
  
}

#fetching the keyvault details using existing data source
data "azurerm_key_vault" "kv" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}
data "azurerm_key_vault_secret" "adminUsername" {
  name         = "adminUsername"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "adminPassword" {
  name         = "adminPassword"
  key_vault_id = data.azurerm_key_vault.kv.id
}