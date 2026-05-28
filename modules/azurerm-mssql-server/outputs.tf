output "this" {
  description = "Microsoft SQL Azure Database Server"
  value = {  
    id                          = azurerm_mssql_server.this.id
    name                        = azurerm_mssql_server.this.name 
    fully_qualified_domain_name = azurerm_mssql_server.this.fully_qualified_domain_name  
  }
}
