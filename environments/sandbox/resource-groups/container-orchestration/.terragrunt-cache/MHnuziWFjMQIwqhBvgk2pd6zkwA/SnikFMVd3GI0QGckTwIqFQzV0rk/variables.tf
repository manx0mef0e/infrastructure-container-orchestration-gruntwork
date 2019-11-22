variable subscription_id {
  type        = string
  description = "The subscription to build the resources"
}

variable resource_group_name {
  type    = string
}

variable location {
  type    = string
  default = "West Europe"
}

variable tags {
  type = map(string)
  default = {
    engineer       = "tony.lea@vanquisbank.co.uk"
    environment    = "sandbox"
    function       = "devops"
    projectName    = "Azure DevOps Build Agents"
    team           = "Core Infrastructure Engineering"
    dataProfile    = "Internal"
    projectVersion = "v1.0.0"
  }
}
