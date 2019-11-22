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

variable "log_analytics_workspace_name" {
  type    = string
  default = "testLogAnalyticsWorkspaceName"
}

variable "log_analytics_workspace_sku" {
  type    = string
  default = "PerGB2018"
}

variable "cluster_name" {
  type    = string
  default = "coreinfrakubernetes"
}

variable "dns_prefix" {
  type    = string
  default = "coreinfrak8s"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa_vbl.pub"
}

variable "agent_count" {
  type    = number
  default = 3
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B8ms"
}
