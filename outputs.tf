output "cosmosdb_sql_triggers_id" {
  description = "Map of id values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_sql_triggers_body" {
  description = "Map of body values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.body if v.body != null && length(v.body) > 0 }
}
output "cosmosdb_sql_triggers_container_id" {
  description = "Map of container_id values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.container_id if v.container_id != null && length(v.container_id) > 0 }
}
output "cosmosdb_sql_triggers_name" {
  description = "Map of name values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_sql_triggers_operation" {
  description = "Map of operation values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.operation if v.operation != null && length(v.operation) > 0 }
}
output "cosmosdb_sql_triggers_type" {
  description = "Map of type values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.type if v.type != null && length(v.type) > 0 }
}

