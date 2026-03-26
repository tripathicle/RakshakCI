variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string

}
variable "rg_name" {
  description = "Name of the resource group"
  type        = string

}
variable "location" {
  description = "Location of the virtual machine"
  type        = string

}
variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string

}
variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string

}

variable "admin_password" {
  description = "Admin password for the virtual machine"
  type        = string
  sensitive   = true

}

variable "nic_name" {
  description = "Name of the network interface"
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