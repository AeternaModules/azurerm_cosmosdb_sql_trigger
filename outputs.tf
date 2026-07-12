output "cosmosdb_sql_triggers_body" {
  description = "Map of body values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.body }
}
output "cosmosdb_sql_triggers_container_id" {
  description = "Map of container_id values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.container_id }
}
output "cosmosdb_sql_triggers_name" {
  description = "Map of name values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.name }
}
output "cosmosdb_sql_triggers_operation" {
  description = "Map of operation values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.operation }
}
output "cosmosdb_sql_triggers_type" {
  description = "Map of type values across all cosmosdb_sql_triggers, keyed the same as var.cosmosdb_sql_triggers"
  value       = { for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : k => v.type }
}

