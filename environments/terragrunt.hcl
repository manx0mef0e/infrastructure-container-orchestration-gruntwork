remote_state {
  backend = "azurerm" 
  config = {
    resource_group_name  = "rg-ams-prod-core-tstate"
    storage_account_name = "terraformcoreprod"
    container_name       = "terraform-state-lock"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}