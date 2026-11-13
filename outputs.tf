output "networks_id" {
  description = "Map of id values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.id }
}
output "networks_attachable" {
  description = "Map of attachable values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.attachable }
}
output "networks_driver" {
  description = "Map of driver values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.driver }
}
output "networks_ingress" {
  description = "Map of ingress values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.ingress }
}
output "networks_internal" {
  description = "Map of internal values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.internal }
}
output "networks_ipam_config" {
  description = "Map of ipam_config values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.ipam_config }
}
output "networks_ipam_driver" {
  description = "Map of ipam_driver values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.ipam_driver }
}
output "networks_ipam_options" {
  description = "Map of ipam_options values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.ipam_options }
}
output "networks_ipv6" {
  description = "Map of ipv6 values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.ipv6 }
}
output "networks_labels" {
  description = "Map of labels values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.labels }
}
output "networks_name" {
  description = "Map of name values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.name }
}
output "networks_options" {
  description = "Map of options values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.options }
}
output "networks_scope" {
  description = "Map of scope values across all networks, keyed the same as var.networks"
  value       = { for k, v in docker_network.networks : k => v.scope }
}

