terraform {
  required_version = ">= 0.12.13"
  backend "azurerm" {}
}

data "terraform_remote_state" "resource_group" {
  backend = "azurerm"
  config = {
    storage_account_name = "terraformcoreprod"
    container_name       = "terraform-state-lock"
    key                  = var.resource_group_state_key
    access_key           = var.azure_access_key
  }
}

provider "azurerm" {
  version         = "~> 1.36"
  subscription_id = var.subscription_id
}

locals {
  global_tags = merge(
    data.terraform_remote_state.resource_group.outputs.tags, var.tags
  )
  resource_group_name     = data.terraform_remote_state.resource_group.outputs.name
  resource_group_location = data.terraform_remote_state.resource_group.outputs.location
}

module "container_registry" {
  source              = "/Users/adambarkes/projects/training/infrastructure-container-orchestration-gruntwork/modules/data-stores/container-registry"
  registry_name       = var.registry_name
  resource_group_name = local.resource_group_name
  location            = local.resource_group_location
  tags                = local.global_tags
}
