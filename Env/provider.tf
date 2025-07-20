terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }

}



provider "azurerm" {
  features {
  }
  subscription_id = "5434828b-4299-46cb-9433-bee373d4ad6b"
}



