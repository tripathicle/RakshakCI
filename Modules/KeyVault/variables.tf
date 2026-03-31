variable "keyvault_name" {
    description = "Name of the Key Vault"
    type        = string
  
}
variable "location" {
    description = "Azure region where the Key Vault will be created"
    type        = string
}
variable "rg_name" {
    description = "Name of the Resource Group where the Key Vault will be created"
    type        = string
}

#Security best practices 

variable "public_network_access_enabled" {
  type    = bool
  default = true
}
  
