variable "cosmosdb_sql_triggers" {
  description = <<EOT
Map of cosmosdb_sql_triggers, attributes below
Required:
    - body
    - container_id
    - name
    - operation
    - type
EOT

  type = map(object({
    body         = string
    container_id = string
    name         = string
    operation    = string
    type         = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_triggers : (
        length(v.body) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

