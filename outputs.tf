output "credentials_id" {
  description = "Map of id values across all credentials, keyed the same as var.credentials except keys with no id are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "credentials_aws_iam_role" {
  description = "Map of aws_iam_role values across all credentials, keyed the same as var.credentials except keys with no aws_iam_role are omitted"
  value       = { for k, v in databricks_credential.credentials : k => one(v.aws_iam_role) if v.aws_iam_role != null && length(v.aws_iam_role) > 0 }
}
output "credentials_azure_managed_identity" {
  description = "Map of azure_managed_identity values across all credentials, keyed the same as var.credentials except keys with no azure_managed_identity are omitted"
  value       = { for k, v in databricks_credential.credentials : k => one(v.azure_managed_identity) if v.azure_managed_identity != null && length(v.azure_managed_identity) > 0 }
}
output "credentials_azure_service_principal" {
  description = "Map of azure_service_principal values across all credentials, keyed the same as var.credentials except keys with no azure_service_principal are omitted"
  value       = { for k, v in databricks_credential.credentials : k => one(v.azure_service_principal) if v.azure_service_principal != null && length(v.azure_service_principal) > 0 }
  sensitive   = true
}
output "credentials_comment" {
  description = "Map of comment values across all credentials, keyed the same as var.credentials except keys with no comment are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "credentials_created_at" {
  description = "Map of created_at values across all credentials, keyed the same as var.credentials except keys with no created_at are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.created_at if v.created_at != null }
}
output "credentials_created_by" {
  description = "Map of created_by values across all credentials, keyed the same as var.credentials except keys with no created_by are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "credentials_credential_id" {
  description = "Map of credential_id values across all credentials, keyed the same as var.credentials except keys with no credential_id are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.credential_id if v.credential_id != null && length(v.credential_id) > 0 }
}
output "credentials_databricks_gcp_service_account" {
  description = "Map of databricks_gcp_service_account values across all credentials, keyed the same as var.credentials except keys with no databricks_gcp_service_account are omitted"
  value       = { for k, v in databricks_credential.credentials : k => one(v.databricks_gcp_service_account) if v.databricks_gcp_service_account != null && length(v.databricks_gcp_service_account) > 0 }
}
output "credentials_force_destroy" {
  description = "Map of force_destroy values across all credentials, keyed the same as var.credentials except keys with no force_destroy are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.force_destroy if v.force_destroy != null }
}
output "credentials_force_update" {
  description = "Map of force_update values across all credentials, keyed the same as var.credentials except keys with no force_update are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.force_update if v.force_update != null }
}
output "credentials_full_name" {
  description = "Map of full_name values across all credentials, keyed the same as var.credentials except keys with no full_name are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "credentials_isolation_mode" {
  description = "Map of isolation_mode values across all credentials, keyed the same as var.credentials except keys with no isolation_mode are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.isolation_mode if v.isolation_mode != null && length(v.isolation_mode) > 0 }
}
output "credentials_metastore_id" {
  description = "Map of metastore_id values across all credentials, keyed the same as var.credentials except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "credentials_name" {
  description = "Map of name values across all credentials, keyed the same as var.credentials except keys with no name are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.name if v.name != null && length(v.name) > 0 }
}
output "credentials_owner" {
  description = "Map of owner values across all credentials, keyed the same as var.credentials except keys with no owner are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "credentials_provider_config" {
  description = "Map of provider_config values across all credentials, keyed the same as var.credentials except keys with no provider_config are omitted"
  value       = { for k, v in databricks_credential.credentials : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "credentials_purpose" {
  description = "Map of purpose values across all credentials, keyed the same as var.credentials except keys with no purpose are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.purpose if v.purpose != null && length(v.purpose) > 0 }
}
output "credentials_read_only" {
  description = "Map of read_only values across all credentials, keyed the same as var.credentials except keys with no read_only are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.read_only if v.read_only != null }
}
output "credentials_skip_validation" {
  description = "Map of skip_validation values across all credentials, keyed the same as var.credentials except keys with no skip_validation are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.skip_validation if v.skip_validation != null }
}
output "credentials_updated_at" {
  description = "Map of updated_at values across all credentials, keyed the same as var.credentials except keys with no updated_at are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.updated_at if v.updated_at != null }
}
output "credentials_updated_by" {
  description = "Map of updated_by values across all credentials, keyed the same as var.credentials except keys with no updated_by are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}
output "credentials_used_for_managed_storage" {
  description = "Map of used_for_managed_storage values across all credentials, keyed the same as var.credentials except keys with no used_for_managed_storage are omitted"
  value       = { for k, v in databricks_credential.credentials : k => v.used_for_managed_storage if v.used_for_managed_storage != null }
}

