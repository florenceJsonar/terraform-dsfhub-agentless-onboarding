output "this" {
  description = "Diagnostic Setting"
  value       = {
    id   = azurerm_monitor_diagnostic_setting.this.id
    name = azurerm_monitor_diagnostic_setting.this.name 
  }
}
