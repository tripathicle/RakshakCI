variable "vnet_name" {
    description = "Name of the virtual network"
    type        = string
  
}
variable "location" {
    description = "location of the virtual network"
    type = string
}
variable "rg_name" {
    description = "name of the rg"
    type = string
  
}
variable "vnet_address_space" {
    description = "address space of the virtual network"
    type = list(string)
  
}

variable "dns_servers" {
    description = "dns servers"
    type = list(string)
  
}
