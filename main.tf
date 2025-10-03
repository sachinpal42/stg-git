resource "azurerm_resource_group" "rg" {
  name     = "rg-bunty"
  location = "east us"
}

resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rg]
  resource_group_name      = "rg-bunty"
  name                     = "stgbunty"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}