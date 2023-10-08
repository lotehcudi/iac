provider "azurerm" {
  features {
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rgstate"
    storage_account_name = ""
    container_name       = ""
    key                  = ""
  }
}


resource "azurerm_resource_group" "rgtest" {
  name     = "rgtest"
  location = var.location
}