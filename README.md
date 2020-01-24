[![Build status](https://dev.azure.com/azure-terraform/Blueprints/_apis/build/status/modules/automation)](https://dev.azure.com/azure-terraform/Blueprints/_build/latest?definitionId=0)
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
