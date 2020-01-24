module "caf_name_aaa" {
  source  = "aztfmod/caf-naming/azurerm"
  version = "~> 0.1.0"
    
  name    = var.name
  type    = "aaa"
  convention  = var.convention
}

resource "azurerm_automation_account" "auto_account" {
  name                = module.caf_name_aaa.aaa
  location            = var.location
  resource_group_name = var.rg
  tags                = local.tags
  
  sku_name = "Basic"
}
