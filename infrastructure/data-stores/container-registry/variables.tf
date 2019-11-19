variable subscription_id {
  type        = string
  description = "The subscription to build the resources"
  default     = "c56f4a07-7ef3-4ce1-bd05-09da7ddf6a87"
}

variable resource_group_state_key {
  type    = string
  default = "sandbox/resource-groups/container-orchestration/terraform.tfstate"
}

variable azure_access_key {
  type = string
}

variable tags {
  type    = map(string)
  default = {}
}

variable registry_name {
  type    = string
  default = "vblcoreinfra"
}
