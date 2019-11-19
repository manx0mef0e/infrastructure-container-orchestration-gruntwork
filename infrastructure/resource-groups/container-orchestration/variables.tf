variable subscription_id {
  type        = string
  description = "The subscription to build the resources"
  default     = "c56f4a07-7ef3-4ce1-bd05-09da7ddf6a87"
}

variable resource_group_name {
  type    = string
  default = "rg-ams-sandbox-core-container-orchestration"
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
