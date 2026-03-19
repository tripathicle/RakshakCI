terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.64.0"
      # version = "~>4.64.0" use in the peoduction environment right most version will upgrade automatically
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "a952c7be-2375-401d-b046-6b79e69b7bf9"
  features {}
}

