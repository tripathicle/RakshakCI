variable "stg_name" {
    description = "Name of the Storage Account"
    type        = string
  
}

variable "location" {
    description = "Location of the Storage Account"
    type        = string
}

variable "rg_name" {
    description = "Name of the Resource Group"
    type        = string
}
variable "account_tier" {
  description = "The performance tier of the Storage Account. Valid values are: 'Standard' and 'Premium'."
  type = string
}
variable "account_replication_type" {
  description = "The replication type of the Storage Account. Valid values are: 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
  type = string
}