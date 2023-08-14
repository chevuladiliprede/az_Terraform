resource "azurerm_app_service_plan" "welcome" {
  name                = "welcome-app-service-plan"
  location            = "East US"
  resource_group_name = "tfstate-rg"
  kind                = "App"
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "welcome" {
  name                = "welcome-app-service"
  location            = "East US"
  resource_group_name = "tfstate-rg"
  app_service_plan_id = azurerm_app_service_plan.welcome.id
}
