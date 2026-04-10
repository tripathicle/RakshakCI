rg_name                       = "RakshakCi_Rg_pls_do_not_delete_it"
location                      = "Central India"
stg_name                      = "rakshakstg1"
account_tier                  = "Standard"
account_replication_type      = "GRS"
vnet_name                     = "RakshakCI-Vnet"
address_space                 = ["10.0.0.0/16"]
dns_servers                   = ["10.0.0.4", "10.0.0.5"]
subnet_name                   = "Rakshak-Subnet"
subnet_address_prefix         = ["10.0.1.0/24"]
pip_name                      = "Rakshak_pip"
allocation_method             = "Static"
nic_name                      = "Rakshak-Nic"
private_ip_address_allocation = "Dynamic"
nic_ip_config_name            = "internal"
vm_name                       = "RakshakVM"
vm_size                       = "Standard_D2_v5"
# admin_username                = "RakshakCI"
# admin_password                = "Devops@12345"
os_disk_caching              = "ReadWrite"
os_disk_name                 = "rakshak-vm-osdisk"
os_disk_storage_account_type = "Standard_LRS"
image_offer                  = "0001-com-ubuntu-server-jammy"
image_publisher              = "Canonical"
image_sku                    = "22_04-lts"
image_version                = "latest"
nsg_name                     = "rakshak_nsg"
keyvault_name                = "rakshakkeyvault"

sql_server_name    = "rakshaksql"
sql_admin_username = "sqladmin"
sql_admin_password = "Devopssql@12345"
database_name      = "rakshakdb"
sku_name           = "S0"
max_size_gb        = 2
zone_redundant     = false
read_replica_count = 0

#Security
public_network_access_enabled = true



