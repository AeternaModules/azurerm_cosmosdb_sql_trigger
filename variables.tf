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
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_sql_trigger's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: container_id
  #   source:    [from cosmosdb.ValidateContainerID] !ok
  # path: container_id
  #   source:    [from cosmosdb.ValidateContainerID] err != nil
  # path: operation
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

