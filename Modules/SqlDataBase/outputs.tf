output "database_name" {
    description = "Name of the SQL Database"
    value       = azurerm_mssql_database.mysqlDb.name
}
output "database_id" {
    description = "ID of the SQL Database"
    value       = azurerm_mssql_database.mysqlDb.id
}
