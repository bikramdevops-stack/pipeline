terraform {
  backend "azurerm" {
    resource_group_name = "rg_admin"
    storage_account_name = "statemanage"
    container_name = "statemanage"
    key_id="bikram.tfstate"
    
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "rg-bik"
  location = "east us"
}
