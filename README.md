[![Build status](https://dev.azure.com/azure-terraform/Blueprints/_apis/build/status/modules/automation)](https://dev.azure.com/azure-terraform/Blueprints/_build/latest?definitionId=0)
aztfmod/terraform-azurerm-caf-apim


# **READ ME**
Thanks for your interest in Cloud Adoption Framework for Azure landing zones on Terraform.
This module is now deprecated and no longer maintained. You can still clone it, fork it, use it, but we wont maintain it. 
As part of Cloud Adoption Framework landing zones for Terraform, we have migrated to a single module model, which you can find here: https://github.com/aztfmod/terraform-azurerm-caf and on the Terraform registry: https://registry.terraform.io/modules/aztfmod/caf/azurerm 

In Terraform 0.13 you can now call directly submodules easily with the following syntax:
```hcl
module "caf_automation" {
  source  = "aztfmod/caf/azurerm//modules/automation"
  version = "0.4.18"
  # insert the 6 required variables here
}
```


# Creates an Azure Automation Account
Creates an Azure Automation Account

Reference the module to a specific version (recommended):
```hcl
module "automation" {
    source  = "aztfmod/caf-automation/azurerm"
    version = "0.x.y"
    
    name                    = var.auto_account
    rg                      = var.rg
    location                = var.location["region1"] 
    tags                    = var.tags
    la_workspace_id         = var.log_analytics_workspace.id
    diagnostics_map         = var.diagnostics_map
}
```

## Parameters

| Name | Type | Default | Description | 
| -- | -- | -- | -- | 
| rg | string | None | Name of the resource group where to create the resource. Changing this forces a new resource to be created. |
| location | string | None | Specifies the Azure location to deploy the resource. Changing this forces a new resource to be created.  | 
| name | string | None | Name of the resource to be created. Changing this forces a new resource to be created. | 
| tags | map | None | Map of tags for the deployment.  | 
| la_workspace_id | string | None | Log Analytics Workspace ID. | 
| diagnostics_map | map | None | Map with the diagnostics repository information.  | 
| diagnostics_settings | object | None | Map with the diagnostics settings. See the required structure in the following example or in the diagnostics module documentation. | 
| convention | string | None | Naming convention to be used (check at the naming convention module for possible values).  | 


## Outputs

| Name | Type | Description | 
| -- | -- | -- | 
| object | object | Returns the full object of the created Azure automation account. |
| name | string | Returns the name of the created Azure automation account. |
| id | string | Returns the ID of the created Azure automation account. | 
