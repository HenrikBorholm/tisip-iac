terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "${var.student_id}-${var.project}-rg"
  location = var.location
}

module "network" {
  source = "git::https://github.com/HenrikBorholm/tisip-iac.git//modules/network?ref=network-v1.1.0"

  project             = var.project
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  student_id          = var.student_id
}
