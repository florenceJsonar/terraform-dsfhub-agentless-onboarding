output "this" {
  description = "Authorization Rule for an Event Hub Namespace"
  value = {    
    id          = azurerm_eventhub_namespace_authorization_rule.this.id   
    name        = azurerm_eventhub_namespace_authorization_rule.this.name           
    primary_key = azurerm_eventhub_namespace_authorization_rule.this.primary_key  
  }
}
