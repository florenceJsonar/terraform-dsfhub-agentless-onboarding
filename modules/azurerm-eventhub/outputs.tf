output "this" {
  description = "Azure Event Hub"
  value = {     
    id   = azurerm_eventhub.this.id
    name = azurerm_eventhub.this.name
  }
}
