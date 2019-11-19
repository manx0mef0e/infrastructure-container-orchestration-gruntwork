variable "resource_group_location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable tags {
  type = map(string)
}

variable "log_analytics_workspace_name" {
  type = string
}

variable "log_analytics_workspace_sku" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "ssh_public_key" {
}

variable "agent_count" {
  type = number
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "vm_size" {
  type = string
}
