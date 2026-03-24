variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string

}
variable "location" {
  description = "Location of the Resource Group"
  type        = string

}

variable "stg_name" {
  description = "Name of the Storage Account"
  type        = string

}

variable "account_tier" {
  description = "The performance tier of the Storage Account. Valid values are: 'Standard' and 'Premium'."
  type        = string

}

variable "account_replication_type" {
  description = "The replication type of the Storage Account. Valid values are: 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string

}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)

}

variable "dns_servers" {
  description = "Custom DNS servers for the Virtual Network"
  type        = list(string)

}
variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string

}
variable "subnet_address_prefix" {
  description = "Address prefix for the Subnet"
  type        = list(string)

}