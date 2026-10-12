output "authentication_policies_id" {
  description = "Map of id values across all authentication_policies, keyed the same as var.authentication_policies except keys with no id are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authentication_policies_authentication_methods" {
  description = "Map of authentication_methods values across all authentication_policies, keyed the same as var.authentication_policies except keys with no authentication_methods are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.authentication_methods if v.authentication_methods != null && length(v.authentication_methods) > 0 }
}
output "authentication_policies_client_policy" {
  description = "Map of client_policy values across all authentication_policies, keyed the same as var.authentication_policies except keys with no client_policy are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.client_policy if v.client_policy != null && length(v.client_policy) > 0 }
}
output "authentication_policies_client_types" {
  description = "Map of client_types values across all authentication_policies, keyed the same as var.authentication_policies except keys with no client_types are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.client_types if v.client_types != null && length(v.client_types) > 0 }
}
output "authentication_policies_comment" {
  description = "Map of comment values across all authentication_policies, keyed the same as var.authentication_policies except keys with no comment are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "authentication_policies_database" {
  description = "Map of database values across all authentication_policies, keyed the same as var.authentication_policies except keys with no database are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.database if v.database != null && length(v.database) > 0 }
}
output "authentication_policies_describe_output" {
  description = "Map of describe_output values across all authentication_policies, keyed the same as var.authentication_policies except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "authentication_policies_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all authentication_policies, keyed the same as var.authentication_policies except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "authentication_policies_mfa_authentication_methods" {
  description = "Map of mfa_authentication_methods values across all authentication_policies, keyed the same as var.authentication_policies except keys with no mfa_authentication_methods are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.mfa_authentication_methods if v.mfa_authentication_methods != null && length(v.mfa_authentication_methods) > 0 }
}
output "authentication_policies_mfa_enrollment" {
  description = "Map of mfa_enrollment values across all authentication_policies, keyed the same as var.authentication_policies except keys with no mfa_enrollment are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.mfa_enrollment if v.mfa_enrollment != null && length(v.mfa_enrollment) > 0 }
}
output "authentication_policies_mfa_policy" {
  description = "Map of mfa_policy values across all authentication_policies, keyed the same as var.authentication_policies except keys with no mfa_policy are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => one(v.mfa_policy) if v.mfa_policy != null && length(v.mfa_policy) > 0 }
}
output "authentication_policies_name" {
  description = "Map of name values across all authentication_policies, keyed the same as var.authentication_policies except keys with no name are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "authentication_policies_pat_policy" {
  description = "Map of pat_policy values across all authentication_policies, keyed the same as var.authentication_policies except keys with no pat_policy are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => one(v.pat_policy) if v.pat_policy != null && length(v.pat_policy) > 0 }
}
output "authentication_policies_schema" {
  description = "Map of schema values across all authentication_policies, keyed the same as var.authentication_policies except keys with no schema are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "authentication_policies_security_integrations" {
  description = "Map of security_integrations values across all authentication_policies, keyed the same as var.authentication_policies except keys with no security_integrations are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.security_integrations if v.security_integrations != null && length(v.security_integrations) > 0 }
}
output "authentication_policies_show_output" {
  description = "Map of show_output values across all authentication_policies, keyed the same as var.authentication_policies except keys with no show_output are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "authentication_policies_workload_identity_policy" {
  description = "Map of workload_identity_policy values across all authentication_policies, keyed the same as var.authentication_policies except keys with no workload_identity_policy are omitted"
  value       = { for k, v in snowflake_authentication_policy.authentication_policies : k => one(v.workload_identity_policy) if v.workload_identity_policy != null && length(v.workload_identity_policy) > 0 }
}

