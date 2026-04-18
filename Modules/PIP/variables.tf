variable "pip_name" {
  description = "Name of the Public IP"
  type        = string

}
variable "location" {
  description = "Location of the Public IP"
  type        = string

}
variable "rg_name" {
  description = "Resource Group Name where the Public IP will be created"
  type        = string

}
variable "allocation_method" {
  description = "Allocation method for the Public IP"
  type        = string
}