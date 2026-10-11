variable "core_public_ips_lookup" {
  description = <<EOT
Map of core_public_ips_lookup, attributes below
Required:
    - compartment_id
    - scope
Optional:
    - availability_domain
    - lifetime
    - public_ip_pool_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    scope               = string
    availability_domain = optional(string)
    lifetime            = optional(string)
    public_ip_pool_id   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

