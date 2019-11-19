include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../infrastructure/services/azure-kubernetes-service"
}

inputs = {
}