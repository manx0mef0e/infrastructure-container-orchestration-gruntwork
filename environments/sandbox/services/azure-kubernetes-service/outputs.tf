output "client_key" {
  value = module.azure_kubernetes_service.client_key
}

output "client_certificate" {
  value = module.azure_kubernetes_service.client_certificate
}

output "cluster_ca_certificate" {
  value = module.azure_kubernetes_service.cluster_ca_certificate
}

output "cluster_username" {
  value = module.azure_kubernetes_service.cluster_username
}

output "cluster_password" {
  value = module.azure_kubernetes_service.cluster_password
}

output "kube_config" {
  value = module.azure_kubernetes_service.kube_config
}

output "host" {
  value = module.azure_kubernetes_service.host
}
