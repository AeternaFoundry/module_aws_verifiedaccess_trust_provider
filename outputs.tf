output "verifiedaccess_trust_providers_id" {
  description = "Map of id values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "verifiedaccess_trust_providers_description" {
  description = "Map of description values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "verifiedaccess_trust_providers_device_options" {
  description = "Map of device_options values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => one(v.device_options) if v.device_options != null && length(v.device_options) > 0 }
}
output "verifiedaccess_trust_providers_device_trust_provider_type" {
  description = "Map of device_trust_provider_type values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.device_trust_provider_type if v.device_trust_provider_type != null && length(v.device_trust_provider_type) > 0 }
}
output "verifiedaccess_trust_providers_native_application_oidc_options" {
  description = "Map of native_application_oidc_options values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => one(v.native_application_oidc_options) if v.native_application_oidc_options != null && length(v.native_application_oidc_options) > 0 }
  sensitive   = true
}
output "verifiedaccess_trust_providers_oidc_options" {
  description = "Map of oidc_options values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => one(v.oidc_options) if v.oidc_options != null && length(v.oidc_options) > 0 }
  sensitive   = true
}
output "verifiedaccess_trust_providers_policy_reference_name" {
  description = "Map of policy_reference_name values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.policy_reference_name if v.policy_reference_name != null && length(v.policy_reference_name) > 0 }
}
output "verifiedaccess_trust_providers_region" {
  description = "Map of region values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "verifiedaccess_trust_providers_sse_specification" {
  description = "Map of sse_specification values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => one(v.sse_specification) if v.sse_specification != null && length(v.sse_specification) > 0 }
}
output "verifiedaccess_trust_providers_tags" {
  description = "Map of tags values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "verifiedaccess_trust_providers_tags_all" {
  description = "Map of tags_all values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "verifiedaccess_trust_providers_trust_provider_type" {
  description = "Map of trust_provider_type values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.trust_provider_type if v.trust_provider_type != null && length(v.trust_provider_type) > 0 }
}
output "verifiedaccess_trust_providers_user_trust_provider_type" {
  description = "Map of user_trust_provider_type values across all verifiedaccess_trust_providers, keyed the same as var.verifiedaccess_trust_providers"
  value       = { for k, v in aws_verifiedaccess_trust_provider.verifiedaccess_trust_providers : k => v.user_trust_provider_type if v.user_trust_provider_type != null && length(v.user_trust_provider_type) > 0 }
}

