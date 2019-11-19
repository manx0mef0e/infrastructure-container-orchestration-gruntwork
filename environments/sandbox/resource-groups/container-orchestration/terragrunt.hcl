include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../infrastructure/resource-groups/container-orchestration"
}

inputs = {
}