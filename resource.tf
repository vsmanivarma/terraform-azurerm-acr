resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name = var.container_registry_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku = var.sku
  admin_enabled = var.admin_enabled
  georeplications {
    location = var.georeplication_location
    zone_redundancy_enabled = true
  }
}