output "core_public_ips_lookup_id" {
  description = "Map of id values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_public_ips_lookup_availability_domain" {
  description = "Map of availability_domain values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no availability_domain are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_public_ips_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_public_ips_lookup_filter" {
  description = "Map of filter values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_public_ips_lookup_lifetime" {
  description = "Map of lifetime values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no lifetime are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.lifetime if v.lifetime != null && length(v.lifetime) > 0 }
}
output "core_public_ips_lookup_public_ip_pool_id" {
  description = "Map of public_ip_pool_id values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no public_ip_pool_id are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.public_ip_pool_id if v.public_ip_pool_id != null && length(v.public_ip_pool_id) > 0 }
}
output "core_public_ips_lookup_public_ips" {
  description = "Map of public_ips values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no public_ips are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.public_ips if v.public_ips != null && length(v.public_ips) > 0 }
}
output "core_public_ips_lookup_scope" {
  description = "Map of scope values across all core_public_ips_lookup, keyed the same as var.core_public_ips_lookup except keys with no scope are omitted"
  value       = { for k, v in data.oci_core_public_ips.core_public_ips_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

