terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "7a3c6854-0fe1-42eb-b5b9-800af1e53d70"
  features {}
  # subscription_id hentes fra ARM_SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-iac-Henrik-Borholm"
  location = "francecentral"
}