variable "database_name" {
    description = "Name of the SQL Database"
    type        = string
}
variable "sku_name" {
    description = "SKU name for the SQL Database"
    type        = string
}
variable "max_size_gb" {
    description = "Maximum size of the SQL Database in GB"
    type        = number
}
variable "zone_redundant" {
    description = "Whether the SQL Database is zone redundant"
    type        = bool
}
variable "read_replica_count" {
    description = "Number of read replicas for the SQL Database"
    type        = number
}

variable "server_id" {
  description = "SQL Server ID"
  type        = string
}