resource "azurerm_automation_account" "auto_account" {
  name                = "${var.auto_name}-autoacc"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.tags
  
  sku_name = "Basic"
  
}
