terraform {
  required_version = ">= 0.12.13"
  backend "azurerm" {
    resource_group_name  = "rg-ams-prod-core-tstate"
    storage_account_name = "terraformcoreprod"
    container_name       = "terraform-state-lock"
    key                  = "sandbox/resource-groups/container-orchestration/terraform.tfstate"
  }
}

provider "azurerm" {
  version         = "~> 1.36"
  subscription_id = var.subscription_id
}

locals {
  global_tags = merge(
    {
      TERRAFORM   = "TRUE"
      TFWORKSPACE = terraform.workspace
    }, var.tags
  )
}

module "resource_group" {
  source              = "../../../../modules/resource-groups/"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = local.global_tags
}
