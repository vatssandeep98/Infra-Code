module "resource_group" {
source = "../../Module/Resource_group"
azurerm_resource_group_name = "sharma-rg"
azurerm_resource_group_location =  "central india"
}


module "virtual_network" {
depends_on = [ module.resource_group ]
source = "../../Module/Vnet" 
azurerm_virtual_network_name = "sharma-vnet"
azurerm_virtual_network_location = "central india"
azurerm_resource_group_name = "sharma-rg"
address_space = ["10.0.0.0/16"]
}

module "subnet" {
depends_on = [ module.virtual_network ]
source = "../../Module/Subnet"
azurerm_subnet_name = "frontend_subnet"
azurerm_resource_group_name = "sharma-rg"
azurerm_virtual_network_name = "sharma-vnet" 
address_prefixes = ["10.0.0.0/24"]
}