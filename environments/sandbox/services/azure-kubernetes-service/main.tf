terraform {
  required_version = ">= 0.12.13"
  backend "azurerm" {
    resource_group_name  = "rg-ams-prod-core-tstate"
    storage_account_name = "terraformcoreprod"
    container_name       = "terraform-state-lock"
    key                  = "sandbox/services/container-registry/terraform.tfstate"
  }
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

provider "random" {
  version = "~> 2.2"
}

locals {
  global_tags = merge(
    data.terraform_remote_state.resource_group.outputs.tags, var.tags
  )
  resource_group_name     = data.terraform_remote_state.resource_group.outputs.name
  resource_group_location = data.terraform_remote_state.resource_group.outputs.location
}

module "azure_kubernetes_service" {
  source                       = "../../../../modules/service/azure-kubernetes-service"
  resource_group_location      = local.resource_group_location
  resource_group_name          = local.resource_group_name
  tags                         = local.global_tags
  log_analytics_workspace_name = var.log_analytics_workspace_name
  log_analytics_workspace_sku  = var.log_analytics_workspace_sku
  cluster_name                 = var.cluster_name
  dns_prefix                   = var.dns_prefix
  ssh_public_key               = var.ssh_public_key
  agent_count                  = var.agent_count
  client_id                    = var.client_id
  client_secret                = var.client_secret
  vm_size                      = var.vm_size
}
