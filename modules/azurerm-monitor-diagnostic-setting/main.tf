resource "azurerm_monitor_diagnostic_setting" "this" {
  lifecycle {
    # Ensure a target is set for the diagnostic setting
    precondition {
      condition = (
        var.eventhub_authorization_rule_id != null ||
        var.storage_account_id != null
      )
      error_message = "Atleast one of eventhub_authorization_rule_id, storage_account_id must be specified"
    }

    # Avoid overriding changes made automatically on the Azure side
    ignore_changes = [enabled_log, enabled_metric]
  }

  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id
  eventhub_name                  = var.eventhub_name
  name                           = var.name
  storage_account_id             = var.storage_account_id
  target_resource_id             = var.target_resource_id

  dynamic "enabled_log" {
    # If enabled_log is not defined, do not create
    for_each = var.enabled_log != null ? var.enabled_log : []

    content {
      category       = enabled_log.value.category
      category_group = enabled_log.value.category_group
    }
  }

  dynamic "enabled_metric" {
    # If enabled_metric is not defined, do not create
    for_each = var.enabled_metric != null ? var.enabled_metric : []

    content {
      category = enabled_metric.value.category
      enabled  = enabled_metric.value.enabled
    }
  }
}

