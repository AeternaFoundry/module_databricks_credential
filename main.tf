resource "databricks_credential" "credentials" {
  for_each = var.credentials

  name                     = each.value.name
  purpose                  = each.value.purpose
  comment                  = each.value.comment
  created_at               = each.value.created_at
  created_by               = each.value.created_by
  force_destroy            = each.value.force_destroy
  force_update             = each.value.force_update
  full_name                = each.value.full_name
  isolation_mode           = each.value.isolation_mode
  metastore_id             = each.value.metastore_id
  owner                    = each.value.owner
  read_only                = each.value.read_only
  skip_validation          = each.value.skip_validation
  updated_at               = each.value.updated_at
  updated_by               = each.value.updated_by
  used_for_managed_storage = each.value.used_for_managed_storage

  dynamic "aws_iam_role" {
    for_each = each.value.aws_iam_role != null ? [each.value.aws_iam_role] : []
    content {
      external_id           = aws_iam_role.value.external_id
      role_arn              = aws_iam_role.value.role_arn
      unity_catalog_iam_arn = aws_iam_role.value.unity_catalog_iam_arn
    }
  }

  dynamic "azure_managed_identity" {
    for_each = each.value.azure_managed_identity != null ? [each.value.azure_managed_identity] : []
    content {
      access_connector_id = azure_managed_identity.value.access_connector_id
      credential_id       = azure_managed_identity.value.credential_id
      managed_identity_id = azure_managed_identity.value.managed_identity_id
    }
  }

  dynamic "azure_service_principal" {
    for_each = each.value.azure_service_principal != null ? [each.value.azure_service_principal] : []
    content {
      application_id = azure_service_principal.value.application_id
      client_secret  = azure_service_principal.value.client_secret
      directory_id   = azure_service_principal.value.directory_id
    }
  }

  dynamic "databricks_gcp_service_account" {
    for_each = each.value.databricks_gcp_service_account != null ? [each.value.databricks_gcp_service_account] : []
    content {
      credential_id  = databricks_gcp_service_account.value.credential_id
      email          = databricks_gcp_service_account.value.email
      private_key_id = databricks_gcp_service_account.value.private_key_id
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

