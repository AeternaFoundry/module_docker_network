variable "networks" {
  description = <<EOT
Map of networks, attributes below
Required:
    - name
Optional:
    - attachable
    - driver
    - ingress
    - internal
    - ipam_driver
    - ipam_options
    - ipv6
    - options
    - ipam_config (block):
        - aux_address (optional)
        - gateway (optional)
        - ip_range (optional)
        - subnet (optional)
    - labels (block):
        - label (required)
        - value (required)
EOT

  type = map(object({
    name         = string
    attachable   = optional(bool)
    driver       = optional(string)
    ingress      = optional(bool)
    internal     = optional(bool)
    ipam_driver  = optional(string)
    ipam_options = optional(map(string))
    ipv6         = optional(bool)
    options      = optional(map(string))
    ipam_config = optional(list(object({
      aux_address = optional(map(string))
      gateway     = optional(string)
      ip_range    = optional(string)
      subnet      = optional(string)
    })))
    labels = optional(list(object({
      label = string
      value = string
    })))
  }))
}

