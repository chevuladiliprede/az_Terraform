resource "azurerm_storage_account" "tfstate_storage" {
  name                     = "tfstatestorageacount"
  resource_group_name      = azurerm_resource_group.tfstate_rg.name
  location                 = azurerm_resource_group.tfstate_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate_container" {
  name                  = "tfstate-container"
  storage_account_name = azurerm_storage_account.tfstate_storage.name
}
