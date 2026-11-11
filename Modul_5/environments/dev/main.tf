# environments/dev/main.tf – og environments/prod/main.tf skal være IDENTISK
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {}
}
locals {
  name_prefix = "${var.student_id}-${var.project}"
}
resource "azurerm_resource_group" "main" {
  name     = "${local.name_prefix}-rg"
  location = var.location
}
module "stack" {
  source              = "../../stacks"
  student_id          = var.student_id
  project             = local.name_prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}