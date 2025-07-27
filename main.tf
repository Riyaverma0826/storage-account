resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}

resource "azurerm_storage_account" "strg" {
  name                     = var.storage_name
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false
}
