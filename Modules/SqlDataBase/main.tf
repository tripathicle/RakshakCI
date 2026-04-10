resource "azurerm_mssql_database" "mysqlDb" {
    name                = var.database_name
    server_id           =  var.server_id
    sku_name            = var.sku_name
    max_size_gb         = var.max_size_gb
    zone_redundant      = var.zone_redundant
    read_replica_count = var.read_replica_count
  
}