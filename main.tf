resource "snowflake_authentication_policy" "authentication_policies" {
  for_each = var.authentication_policies

  database                   = each.value.database
  name                       = each.value.name
  schema                     = each.value.schema
  authentication_methods     = each.value.authentication_methods
  client_types               = each.value.client_types
  comment                    = each.value.comment
  mfa_authentication_methods = each.value.mfa_authentication_methods
  mfa_enrollment             = each.value.mfa_enrollment
  security_integrations      = each.value.security_integrations

  dynamic "client_policy" {
    for_each = each.value.client_policy != null ? each.value.client_policy : []
    content {
      client_type     = client_policy.value.client_type
      minimum_version = client_policy.value.minimum_version
    }
  }

  dynamic "mfa_policy" {
    for_each = each.value.mfa_policy != null ? [each.value.mfa_policy] : []
    content {
      allowed_methods                        = mfa_policy.value.allowed_methods
      enforce_mfa_on_external_authentication = mfa_policy.value.enforce_mfa_on_external_authentication
    }
  }

  dynamic "pat_policy" {
    for_each = each.value.pat_policy != null ? [each.value.pat_policy] : []
    content {
      default_expiry_in_days                     = pat_policy.value.default_expiry_in_days
      max_expiry_in_days                         = pat_policy.value.max_expiry_in_days
      network_policy_evaluation                  = pat_policy.value.network_policy_evaluation
      require_role_restriction_for_service_users = pat_policy.value.require_role_restriction_for_service_users
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "workload_identity_policy" {
    for_each = each.value.workload_identity_policy != null ? [each.value.workload_identity_policy] : []
    content {
      allowed_aws_accounts  = workload_identity_policy.value.allowed_aws_accounts
      allowed_azure_issuers = workload_identity_policy.value.allowed_azure_issuers
      allowed_oidc_issuers  = workload_identity_policy.value.allowed_oidc_issuers
      allowed_providers     = workload_identity_policy.value.allowed_providers
    }
  }
}

