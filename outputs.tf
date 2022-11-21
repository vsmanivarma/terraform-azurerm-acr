output "resource_group_name" {
  description = "Name of the Resource Group"
  value = azurerm_resource_group.rg.name
}
output "location" {
  description = "Location of the Resource Group"
  value = azurerm_resource_group.rg.location
}
output "azurerm_container_registry"{
  description = "Name of the Azure Container Registry"
  value = azurerm_container_registry.acr.name
}
output "sku" {
  description = "The SKU name of the container registry"
  value = var.sku
}