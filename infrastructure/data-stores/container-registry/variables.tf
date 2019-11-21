variable subscription_id {
  type        = string
  description = "The subscription to build the resources"
}

variable resource_group_state_key {
  type    = string
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
