variable "sql_server_name" {
    description = "Name of the SQL Server"
    type        = string
  
}
variable "location" {
    description = "Location of the SQL Server"
    type        = string
  
}
variable "rg_name" {
    description = "Name of the Resource Group"
    type        = string
  
}
variable "sql_admin_username" {
    description = "Administrator username for the SQL Server"
    type        = string
  
}
variable "sql_admin_password" {
    description = "Administrator password for the SQL Server"
    type        = string
    sensitive   = true
}