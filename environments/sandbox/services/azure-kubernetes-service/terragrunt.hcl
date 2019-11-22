terraform {
  source = "../../../../infrastructure/services/azure-kubernetes-service"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  subscription_id = "c56f4a07-7ef3-4ce1-bd05-09da7ddf6a87"
  resource_group_state_key = "sandbox/resource-groups/container-orchestration/terraform.tfstate"
}