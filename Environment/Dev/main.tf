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


module "Nsg" {
  depends_on = [module.rg]
  source     = "../../Modules/Nsg"
  nsg_name   = var.nsg_name
  location   = var.location
  rg_name    = var.rg_name

}

module "Nic" {
  depends_on     = [module.SubNet]
  source         = "../../Modules/Nic"
  nic_name       = var.nic_name
  location       = var.location
  rg_name        = var.rg_name
  vnet_name      = var.vnet_name
  subnet_name    = var.subnet_name
  public_ip_name = var.pip_name
  nsg_name       = var.nsg_name
  # terraform will automatically create the dependency between Nic
  nic_ip_config_name            = var.nic_ip_config_name
  private_ip_address_allocation = var.private_ip_address_allocation
  #pip_id taking the value from module PIP and passing to Nic module
  #passing the value of pip_id from module PIP to Nic module dynamically using module.PIP.pip_id
  # in this case we dont need to create a variable  in vars.tf and pass the value 
  # public_ip_id = module.PIP.pip_id
  nsg_id    = module.Nsg.nsg_id
  subnet_id = module.SubNet.subnet_id



}


module "KeyVault" {
  depends_on                    = [module.rg]
  source                        = "../../Modules/KeyVault"
  keyvault_name                 = var.keyvault_name
  location                      = var.location
  rg_name                       = var.rg_name
  public_network_access_enabled = var.public_network_access_enabled


}
module "VM" {
  depends_on = [module.KeyVault, module.Nic]
  source     = "../../Modules/VM"

  keyvault_name = var.keyvault_name
  vm_name       = var.vm_name
  location      = var.location
  rg_name       = var.rg_name
  vm_size       = var.vm_size
  # passing the value of nic_name from variable to VM module
  nic_name                     = module.Nic.nic_name
  nic_id                       = module.Nic.nic_id
  image_publisher              = var.image_publisher
  image_offer                  = var.image_offer
  image_sku                    = var.image_sku
  image_version                = var.image_version
  os_disk_name                 = var.os_disk_name
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type
}

module "SqlServer" {
  depends_on         = [module.rg]
  source             = "../../Modules/SqlServer"
  sql_server_name    = var.sql_server_name
  location           = var.location
  rg_name            = var.rg_name
  sql_admin_username = var.sql_admin_username
  sql_admin_password = var.sql_admin_password

}

module "SqlDataBase" {
  depends_on         = [module.SqlServer]
  source             = "../../Modules/SqlDataBase"
  database_name      = var.database_name
  sku_name           = var.sku_name
  max_size_gb        = var.max_size_gb
  zone_redundant     = var.zone_redundant
  read_replica_count = var.read_replica_count
  server_id          = module.SqlServer.sql_server_id
}



























# module "Nic" {
#   depends_on = [module.SubNet]
#   source     = "../../Modules/Nic"
#   nic_name   = var.nic_name
#   location   = var.location
#   rg_name    = var.rg_name
#   vnet_name = var.vnet_name
#   subnet_name = var.subnet_name
#   public_ip_name = var.pip_name
#   nsg_name = var.nsg_name
#   # terraform will automatically create the dependency between Nic
#   subnet_id                     = module.SubNet.subnet_id
#   nic_ip_config_name            = var.nic_ip_config_name
#   private_ip_address_allocation = var.private_ip_address_allocation
#   #pip_id taking the value from module PIP and passing to Nic module
#   #passing the value of pip_id from module PIP to Nic module dynamically using module.PIP.pip_id
#   # in this case we dont need to create a variable  in vars.tf and pass the value 
#   public_ip_id = module.PIP.pip_id
#   nsg_id       = module.Nsg.nsg_id



# }





