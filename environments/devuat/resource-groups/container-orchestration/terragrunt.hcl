terraform {
  source = "../../../../infrastructure/resource-groups/container-orchestration"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  subscription_id = "a2440561-c691-4ef4-847e-720f0feb1770"
  resource_group_name = "rg-ams-dev-core-container-orchestration"
  resource_group_state_key = "dev/resource-groups/container-orchestration/terraform.tfstate"
}