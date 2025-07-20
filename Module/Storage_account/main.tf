# resource "azurerm_storage_account" "stg" {
#   name                     = var.storageaccountname
#   resource_group_name      = var.azurerm_resource_group_name
#   location                 = var.azurerm_resource_group_location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }