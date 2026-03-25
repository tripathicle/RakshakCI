module "rg" {
  source = "../../Modules/Rg"

  rg_name  = var.rg_name
  location = var.location
}

module "StorageAccount" {
  depends_on               = [module.rg]
  source                   = "../../Modules/StorageAccount"
  stg_name                 = var.stg_name
  rg_name                  = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

module "Vnet" {
  depends_on         = [module.rg]
  source             = "../../Modules/Vnet"
  vnet_name          = var.vnet_name
  rg_name            = var.rg_name
  location           = var.location
  vnet_address_space = var.address_space
  dns_servers        = var.dns_servers
}

module "SubNet" {
  depends_on       = [module.Vnet]
  source           = "../../Modules/SubNet"
  subnet_name      = var.subnet_name
  rg_name          = var.rg_name
  vnet_name        = module.Vnet.vnet_name
  address_prefixes = var.subnet_address_prefix

}

module "PIP" {
  depends_on        = [module.rg]
  source            = "../../Modules/PIP"
  pip_name          = var.pip_name
  location          = var.location
  rg_name           = var.rg_name
  allocation_method = var.allocation_method

}

module "Nic" {
  depends_on = [module.SubNet]
  source     = "../../Modules/Nic"
  nic_name   = var.nic_name
  location   = var.location
  rg_name    = var.rg_name
  # terraform will automatically create the dependency between Nic and SubNet module because we are using the output of SubNet module in Nic module
  subnet_id                     = module.SubNet.subnet_id
  nic_ip_config_name            = var.nic_ip_config_name
  private_ip_address_allocation = var.private_ip_address_allocation
  #pip_id taking the value from module PIP and passing to Nic module
  #passing the value of pip_id from module PIP to Nic module dynamically using module.PIP.pip_id
  # in this case we dont need to create a variable  in vars.tf and pass the value 
  public_ip_id = module.PIP.pip_id
  nsg_id       = module.Nsg.nsg_id

}

module "VM" {
  depends_on = [module.SubNet]
  source     = "../../Modules/VM"
  vm_name    = var.vm_name
  location   = var.location
  rg_name    = var.rg_name
  vm_size    = var.vm_size
  #2 pain point - hardcoded
  admin_username = var.admin_username
  #2 pain point - hardcoded
  admin_password               = var.admin_password
  os_disk_name                 = var.os_disk_name
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type
  image_publisher              = var.image_publisher
  image_offer                  = var.image_offer
  image_sku                    = var.image_sku
  image_version                = var.image_version
  nic_id                       = module.Nic.nic_id
  # pip_id                       = module.PIP.pip_id

}

module "Nsg" {
  depends_on = [module.rg]
  source     = "../../Modules/Nsg"
  nsg_name   = var.nsg_name
  location   = var.location
  rg_name    = var.rg_name

}