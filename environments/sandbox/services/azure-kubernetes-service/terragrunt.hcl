terraform {
  source = "../../../../infrastructure/services/azure-kubernetes-service"
}

include {
  path = find_in_parent_folders()
}

inputs = {
}