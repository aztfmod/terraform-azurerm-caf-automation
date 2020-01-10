module "diagnostics_automation" {
  source  = "aztfmod/caf-diagnostics/azurerm"
  version = "1.0.0"
  
    name                            = azurerm_automation_account.auto_account.name
    resource_id                     = azurerm_automation_account.auto_account.id
    log_analytics_workspace_id      = var.la_workspace_id
    diagnostics_map                 = var.diagnostics_map
    diag_object                     = var.diagnostics_settings
}