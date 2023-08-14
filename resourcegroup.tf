provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfstate_rg" {
  name     = "tfstate-rg"
  location = "Central India"  # Replace with your desired region
}
