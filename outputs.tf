output "networks_id" {
  description = "Map of id values across all networks, keyed the same as var.networks except keys with no id are omitted"
  value       = { for k, v in docker_network.networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networks_attachable" {
  description = "Map of attachable values across all networks, keyed the same as var.networks except keys with no attachable are omitted"
  value       = { for k, v in docker_network.networks : k => v.attachable if v.attachable != null }
}
output "networks_driver" {
  description = "Map of driver values across all networks, keyed the same as var.networks except keys with no driver are omitted"
  value       = { for k, v in docker_network.networks : k => v.driver if v.driver != null && length(v.driver) > 0 }
}
output "networks_ingress" {
  description = "Map of ingress values across all networks, keyed the same as var.networks except keys with no ingress are omitted"
  value       = { for k, v in docker_network.networks : k => v.ingress if v.ingress != null }
}
output "networks_internal" {
  description = "Map of internal values across all networks, keyed the same as var.networks except keys with no internal are omitted"
  value       = { for k, v in docker_network.networks : k => v.internal if v.internal != null }
}
output "networks_ipam_config" {
  description = "Map of ipam_config values across all networks, keyed the same as var.networks except keys with no ipam_config are omitted"
  value       = { for k, v in docker_network.networks : k => v.ipam_config if v.ipam_config != null && length(v.ipam_config) > 0 }
}
output "networks_ipam_driver" {
  description = "Map of ipam_driver values across all networks, keyed the same as var.networks except keys with no ipam_driver are omitted"
  value       = { for k, v in docker_network.networks : k => v.ipam_driver if v.ipam_driver != null && length(v.ipam_driver) > 0 }
}
output "networks_ipam_options" {
  description = "Map of ipam_options values across all networks, keyed the same as var.networks except keys with no ipam_options are omitted"
  value       = { for k, v in docker_network.networks : k => v.ipam_options if v.ipam_options != null && length(v.ipam_options) > 0 }
}
output "networks_ipv6" {
  description = "Map of ipv6 values across all networks, keyed the same as var.networks except keys with no ipv6 are omitted"
  value       = { for k, v in docker_network.networks : k => v.ipv6 if v.ipv6 != null }
}
output "networks_labels" {
  description = "Map of labels values across all networks, keyed the same as var.networks except keys with no labels are omitted"
  value       = { for k, v in docker_network.networks : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "networks_name" {
  description = "Map of name values across all networks, keyed the same as var.networks except keys with no name are omitted"
  value       = { for k, v in docker_network.networks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "networks_options" {
  description = "Map of options values across all networks, keyed the same as var.networks except keys with no options are omitted"
  value       = { for k, v in docker_network.networks : k => v.options if v.options != null && length(v.options) > 0 }
}
output "networks_scope" {
  description = "Map of scope values across all networks, keyed the same as var.networks except keys with no scope are omitted"
  value       = { for k, v in docker_network.networks : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

