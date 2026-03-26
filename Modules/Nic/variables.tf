variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}
variable "location" {
  description = "Location of the Network Interface"
  type        = string

}
variable "rg_name" {
  description = "Resource Group Name of the Network Interface"
  type        = string
}
variable "nic_ip_config_name" {
  description = "Name of the Network Interface IP Configuration"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Allocation method for the Private IP Address"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the Public IP Address"
  type        = string
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string  
}
