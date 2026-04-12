terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.64.0"
      # version = "~>4.64.0" use in the production environment right most version will upgrade automatically.
    }
  }


    backend "azurerm" {

    subscription_id        = "770fa3bb-3c61-4fca-b236-53ca59861b4a"
    resource_group_name   = "RakshakCi_Rg_pls_do_not_delete_it"
    storage_account_name  = "rakshakstg1"
    container_name        = "tfstate"
    key                   = "dev.terraform.tfstate"
    
  }



}





# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "770fa3bb-3c61-4fca-b236-53ca59861b4a"
  features {}
}

