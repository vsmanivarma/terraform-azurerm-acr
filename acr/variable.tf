variable "resource_group_name" {
  description = "Name of the Resource Group"
  type = string
}
variable "location" {
  description = "Location of the Resource group"
  type = string
}
variable "container_registry_name" {
  description = "Name of the Azure Container Registry"
  type = string
}
variable "sku" {
  description = "The SKU name of the container registry"
  type = string
 
validation {
    condition     = contains(["Basic", "Standard ", "Premium"], var.sku)
  }
}
variable "admin_enabled" {
  description = "Specifies whether the admin user is enabled"
  type = bool
  default = false
}
variable "georeplication_location" {
  description = "Location where container registry needs to be geo-replicated"
  type = string 
  default = "westus"
}
