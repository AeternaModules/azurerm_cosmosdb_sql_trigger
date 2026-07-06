output "cosmosdb_sql_triggers" {
  description = "All cosmosdb_sql_trigger resources"
  value       = azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers
}
output "cosmosdb_sql_triggers_body" {
  description = "List of body values across all cosmosdb_sql_triggers"
  value       = [for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : v.body]
}
output "cosmosdb_sql_triggers_container_id" {
  description = "List of container_id values across all cosmosdb_sql_triggers"
  value       = [for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : v.container_id]
}
output "cosmosdb_sql_triggers_name" {
  description = "List of name values across all cosmosdb_sql_triggers"
  value       = [for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : v.name]
}
output "cosmosdb_sql_triggers_operation" {
  description = "List of operation values across all cosmosdb_sql_triggers"
  value       = [for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : v.operation]
}
output "cosmosdb_sql_triggers_type" {
  description = "List of type values across all cosmosdb_sql_triggers"
  value       = [for k, v in azurerm_cosmosdb_sql_trigger.cosmosdb_sql_triggers : v.type]
}

