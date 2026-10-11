variable "verifiedaccess_trust_providers" {
  description = <<EOT
Map of verifiedaccess_trust_providers, attributes below
Required:
    - policy_reference_name
    - trust_provider_type
Optional:
    - description
    - device_trust_provider_type
    - region
    - tags
    - tags_all
    - user_trust_provider_type
    - device_options (block):
        - tenant_id (optional)
    - native_application_oidc_options (block):
        - authorization_endpoint (optional)
        - client_id (optional)
        - client_secret (required)
        - issuer (optional)
        - public_signing_key_endpoint (optional)
        - scope (optional)
        - token_endpoint (optional)
        - user_info_endpoint (optional)
    - oidc_options (block):
        - authorization_endpoint (optional)
        - client_id (optional)
        - client_secret (required)
        - issuer (optional)
        - scope (optional)
        - token_endpoint (optional)
        - user_info_endpoint (optional)
    - sse_specification (block):
        - customer_managed_key_enabled (optional)
        - kms_key_arn (optional)
EOT

  type = map(object({
    policy_reference_name      = string
    trust_provider_type        = string
    description                = optional(string)
    device_trust_provider_type = optional(string)
    region                     = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    user_trust_provider_type   = optional(string)
    device_options = optional(object({
      tenant_id = optional(string)
    }))
    native_application_oidc_options = optional(object({
      authorization_endpoint      = optional(string)
      client_id                   = optional(string)
      client_secret               = string
      issuer                      = optional(string)
      public_signing_key_endpoint = optional(string)
      scope                       = optional(string)
      token_endpoint              = optional(string)
      user_info_endpoint          = optional(string)
    }))
    oidc_options = optional(object({
      authorization_endpoint = optional(string)
      client_id              = optional(string)
      client_secret          = string
      issuer                 = optional(string)
      scope                  = optional(string)
      token_endpoint         = optional(string)
      user_info_endpoint     = optional(string)
    }))
    sse_specification = optional(object({
      customer_managed_key_enabled = optional(bool)
      kms_key_arn                  = optional(string)
    }))
  }))
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

