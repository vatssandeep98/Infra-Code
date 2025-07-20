resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  location            = var.azurerm_virtual_network_location
  resource_group_name = var.azurerm_resource_group_name
  address_space       = var.address_space
  
 }


resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  resource_group_name = var.azurerm_resource_group_name
  location            = var.azurerm_virtual_network_location
  address_space       = var.address_space
  }

  variable "azurerm_virtual_network_name" {}
variable "azurerm_virtual_network_location" {}
variable "address_space" {}
variable "azurerm_resource_group_name" {
  
}