resource "docker_network" "networks" {
  for_each = var.networks

  name         = each.value.name
  attachable   = each.value.attachable
  driver       = each.value.driver
  ingress      = each.value.ingress
  internal     = each.value.internal
  ipam_driver  = each.value.ipam_driver
  ipam_options = each.value.ipam_options
  ipv6         = each.value.ipv6
  options      = each.value.options

  dynamic "ipam_config" {
    for_each = each.value.ipam_config != null ? each.value.ipam_config : []
    content {
      aux_address = ipam_config.value.aux_address
      gateway     = ipam_config.value.gateway
      ip_range    = ipam_config.value.ip_range
      subnet      = ipam_config.value.subnet
    }
  }

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      label = labels.value.label
      value = labels.value.value
    }
  }
}

