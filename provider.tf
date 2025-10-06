terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-sachin"
    storage_account_name = "storagesachin"
    container_name       = "terrastate"
    key                  = "tformstatefile.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "c24701f5-28b9-4143-94b8-dfab761abc82"
}
    