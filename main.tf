data "oci_core_public_ips" "core_public_ips_lookup" {
  for_each = var.core_public_ips_lookup

  compartment_id      = each.value.compartment_id
  scope               = each.value.scope
  availability_domain = each.value.availability_domain
  lifetime            = each.value.lifetime
  public_ip_pool_id   = each.value.public_ip_pool_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

