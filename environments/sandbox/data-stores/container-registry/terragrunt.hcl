terraform {
  source = "../../../../infrastructure/data-stores/container-registry"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  subscription_id.default = "c56f4a07-7ef3-4ce1-bd05-09da7ddf6a87"
  resource_group_state_key.default = "sandbox/resource-groups/container-orchestration/terraform.tfstate"
}