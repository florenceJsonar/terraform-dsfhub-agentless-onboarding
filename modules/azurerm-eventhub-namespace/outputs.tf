output "this" {
  description = "Azure Event Hub Namespace"
  value = { 
    id   = azurerm_eventhub_namespace.this.id 
    name = azurerm_eventhub_namespace.this.name 
  }
}
