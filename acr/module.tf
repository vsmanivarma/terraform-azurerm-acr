module "acr" {
    source = "./"
    version = "1.0.0"
    name = var.resource_group_name
    location = var.location
    containerregistryname = var.container_registry_name
    sku = var.sku
}