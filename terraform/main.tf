# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "azure-${var.app-name}-rg"
  location = var.region
}

# App
resource "azurerm_storage_account" "example" {
  name                     = "${var.app-name}sa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.app-name}-service-plan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "F1"
  }
}

resource "azurerm_function_app" "example" {
  name                       = "${var.app-name}${random_id.suffix.hex}"
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
}

# App Insights - Step 1
# resource "azurerm_application_insights" "example" {
#   name                = "${var.app-name}-appinsights"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   application_type    = "web"  
# }

