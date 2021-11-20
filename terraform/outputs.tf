# enable this when demoing - secrets
# output "instrumentation_key" {
#   value = azurerm_application_insights.example.instrumentation_key
# }

# Step 2
# output "app_id" {
#   value = azurerm_application_insights.example.app_id
# }

output "app-url" {
  value = azurerm_function_app.example.default_hostname
}