resource "azurerm_storage_account" "RakshakCI-Storage" {
  name = var.stg_name
  location =var.location
  resource_group_name = var.rg_name
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
  
  
}