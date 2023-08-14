terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstatestorageacount"
    container_name        = "tfstate-container"
    key                   = "terraform.tfstate"
  }
}
