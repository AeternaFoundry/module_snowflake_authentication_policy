variable "authentication_policies" {
  description = <<EOT
Map of authentication_policies, attributes below
Required:
    - database
    - name
    - schema
Optional:
    - authentication_methods
    - client_types
    - comment
    - mfa_authentication_methods
    - mfa_enrollment
    - security_integrations
    - client_policy (block):
        - client_type (required)
        - minimum_version (required)
    - mfa_policy (block):
        - allowed_methods (optional)
        - enforce_mfa_on_external_authentication (optional)
    - pat_policy (block):
        - default_expiry_in_days (optional)
        - max_expiry_in_days (optional)
        - network_policy_evaluation (optional)
        - require_role_restriction_for_service_users (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
    - workload_identity_policy (block):
        - allowed_aws_accounts (optional)
        - allowed_azure_issuers (optional)
        - allowed_oidc_issuers (optional)
        - allowed_providers (optional)
EOT

  type = map(object({
    database                   = string
    name                       = string
    schema                     = string
    authentication_methods     = optional(set(string))
    client_types               = optional(set(string))
    comment                    = optional(string)
    mfa_authentication_methods = optional(set(string))
    mfa_enrollment             = optional(string)
    security_integrations      = optional(set(string))
    client_policy = optional(list(object({
      client_type     = string
      minimum_version = string
    })))
    mfa_policy = optional(object({
      allowed_methods                        = optional(set(string))
      enforce_mfa_on_external_authentication = optional(string)
    }))
    pat_policy = optional(object({
      default_expiry_in_days                     = optional(number)
      max_expiry_in_days                         = optional(number)
      network_policy_evaluation                  = optional(string)
      require_role_restriction_for_service_users = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    workload_identity_policy = optional(object({
      allowed_aws_accounts  = optional(set(string))
      allowed_azure_issuers = optional(set(string))
      allowed_oidc_issuers  = optional(set(string))
      allowed_providers     = optional(set(string))
    }))
  }))
}

