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