terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "ADO_test_RG"
    storage_account_name  = "adobackend321"
    container_name        = "tfstate"          # must exist in the storage account
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
