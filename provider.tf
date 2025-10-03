terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-sachin"
    storage_account_name = "stgsachin"
    container_name       = "terrastate"
    key                  = "tformstatefile.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "13dfd1e6-6770-4299-b7ea-6aa09b346468"
}
    