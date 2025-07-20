

module "resource_group" {
  for_each = var.resource_groups

  source = "../Module-Bache/Resource_group"
  azurerm_resource_group_name     = each.value.name
  azurerm_resource_group_location = each.value.location
}













# module "resource_group" {
# source = "../Module-Bache/Resource_group"
# azurerm_resource_group_name = "sachin_jio12"
# azurerm_resource_group_location =  "central india"
# }


# module "virtual_network" {
#     depends_on = [ module.resource_group ]
# source = "../Module-Bache/Vnet" 

# azurerm_virtual_network_name = "sachin_vnet"
# azurerm_virtual_network_location = "central india"
# azurerm_resource_group_name = "sachin_jio12"
# address_space = ["10.0.0.0/16"]
# }

# module "subnet" {
#     depends_on = [ module.virtual_network ]
# source = "../Module-Bache/Subnet"
# azurerm_subnet_name = "sachin_subnet"
# azurerm_resource_group_name = "sachin_jio12"
# azurerm_virtual_network_name = "sachin_vnet" 
# address_prefixes = ["10.0.0.0/24"]
# }
