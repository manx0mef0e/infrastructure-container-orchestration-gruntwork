include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../infrastructure/data-stores/container-registry"
}

inputs = {
}