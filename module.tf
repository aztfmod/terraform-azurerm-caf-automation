module "caf_name_gen" {
  source = "github.com/aztfmod/terraform-azurerm-caf-naming.git?ref=proto"
  
  name    = var.name
  type    = "gen"
  convention  = var.convention
}

resource "azurerm_automation_account" "auto_account" {
  name                = module.caf_name_gen.gen
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.tags
  
  sku_name = "Basic"
}
