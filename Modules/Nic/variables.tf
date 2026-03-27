variable "nic_name" {
    description = "Name of the Network Interface"
    type        = string
  
}

variable "location" {
    description = "Location of the Network Interface"
    type        = string
}
variable "rg_name" {
    description = "Name of the Resource Group"
    type        = string
  
}

variable "private_ip_address_allocation" {
    description = "Allocation method for private IP address (Dynamic or Static)"
    type        = string
    default     = "Dynamic"
  
}

variable "nic_ip_config_name" {
    description = "Name of the IP configuration for the Network Interface"
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
variable "nsg_name" {
    description = "Name of the Network Security Group"
    type        = string
  
}
variable "public_ip_name" {
    description = "Name of the Public IP address"
    type        = string
  
}


















# variable "public_ip_id" {
#     description = "ID of the Public IP address (optional)"
#     type        = string
#     default     = null
  
# }


# variable "nsg_id" {
#     description = "ID of the Network Security Group"
#     type        = string
# }

# variable "subnet_id" {
#     description = "ID of the Subnet"
#     type        = string
  
# }