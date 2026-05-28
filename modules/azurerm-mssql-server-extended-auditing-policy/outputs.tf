output "this" {
  description = "Azure MS SQL Server Extended Auditing Policy."
  value = {
    id = azurerm_mssql_server_extended_auditing_policy.this.id 
  }
}
