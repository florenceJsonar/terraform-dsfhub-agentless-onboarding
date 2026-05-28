output "this" {
  description = "Azure storage account"
  value = {  
    id                 = azurerm_storage_account.this.id  
    name               = azurerm_storage_account.this.name
    primary_access_key = azurerm_storage_account.this.primary_access_key 
  }
}
