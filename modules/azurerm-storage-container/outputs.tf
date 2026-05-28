output "this" {
  description = "Azure storage container"
  value = {   
    id   = azurerm_storage_container.this.id     
    name = azurerm_storage_container.this.name    
  }
}
