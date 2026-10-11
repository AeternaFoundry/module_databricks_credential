variable "credentials" {
  description = <<EOT
Map of credentials, attributes below
Required:
    - name
    - purpose
Optional:
    - comment
    - created_at
    - created_by
    - force_destroy
    - force_update
    - full_name
    - isolation_mode
    - metastore_id
    - owner
    - read_only
    - skip_validation
    - updated_at
    - updated_by
    - used_for_managed_storage
    - aws_iam_role (block):
        - external_id (optional)
        - role_arn (optional)
        - unity_catalog_iam_arn (optional)
    - azure_managed_identity (block):
        - access_connector_id (required)
        - credential_id (optional)
        - managed_identity_id (optional)
    - azure_service_principal (block):
        - application_id (required)
        - client_secret (required)
        - directory_id (required)
    - databricks_gcp_service_account (block):
        - credential_id (optional)
        - email (optional)
        - private_key_id (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name                     = string
    purpose                  = string
    comment                  = optional(string)
    created_at               = optional(number)
    created_by               = optional(string)
    force_destroy            = optional(bool)
    force_update             = optional(bool)
    full_name                = optional(string)
    isolation_mode           = optional(string)
    metastore_id             = optional(string)
    owner                    = optional(string)
    read_only                = optional(bool)
    skip_validation          = optional(bool)
    updated_at               = optional(number)
    updated_by               = optional(string)
    used_for_managed_storage = optional(bool)
    aws_iam_role = optional(object({
      external_id           = optional(string)
      role_arn              = optional(string)
      unity_catalog_iam_arn = optional(string)
    }))
    azure_managed_identity = optional(object({
      access_connector_id = string
      credential_id       = optional(string)
      managed_identity_id = optional(string)
    }))
    azure_service_principal = optional(object({
      application_id = string
      client_secret  = string
      directory_id   = string
    }))
    databricks_gcp_service_account = optional(object({
      credential_id  = optional(string)
      email          = optional(string)
      private_key_id = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

