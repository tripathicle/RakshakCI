# Variables for the Dev environment
# This file defines all the variables used in the Dev environment. Each variable has a description and a type to ensure that the correct values are provided when deploying the infrastructure.
# The variables include details for the Resource Group, Storage Account, Virtual Network, Subnet, Public IP, and Network Interface. These variables are essential for configuring the infrastructure components correctly and ensuring that they are deployed in the desired location with the appropriate settings.
# By defining these variables in a separate file, we can easily manage and update the configuration for the Dev environment without affecting other environments. This approach promotes modularity and maintainability in our Terraform codebase.
#

#RG
variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string

}
variable "location" {
  description = "Location of the Resource Group"
  type        = string

}

#Storage Account
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

#Virtual Network and Subnet
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

#Subnet
variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string

}
variable "subnet_address_prefix" {
  description = "Address prefix for the Subnet"
  type        = list(string)

}


#Public IP  
variable "pip_name" {
  description = "Name of the Public IP"
  type        = string

}
variable "allocation_method" {
  description = "Allocation method for the Public IP"
  type        = string
}

#Network Interface
variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string

}
variable "private_ip_address_allocation" {
  description = "Allocation method for the Private IP Address"
  type        = string
}
variable "nic_ip_config_name" {
  description = "Name of the Network Interface IP Configuration"
  type        = string
}
# variable "public_ip_id" {
#   description = "ID of the Public IP Address"
#   type        = string
# }


#Virtual Machine

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}
variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "os_disk_name" {
  description = "Name of the OS disk"
  type        = string
}
variable "os_disk_caching" {
  description = "Caching type for the OS disk"
  type        = string
}
variable "os_disk_storage_account_type" {
  description = "Storage account type for the OS disk"
  type        = string
}
variable "image_publisher" {
  description = "Publisher of the image"
  type        = string
}
variable "image_offer" {
  description = "Offer of the image"
  type        = string
}
variable "image_sku" {
  description = "SKU of the image"
  type        = string
}
variable "image_version" {
  description = "Version of the image"
  type        = string
}

#Nsg



variable "keyvault_name" {
  description = "Name of the Key Vault"
  type        = string
}


variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string

}

variable "sql_server_name" {
  description = "Name of the SQL Server"
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







