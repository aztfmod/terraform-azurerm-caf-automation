[![Build status](https://dev.azure.com/azure-terraform/Blueprints/_apis/build/status/modules/automation)](https://dev.azure.com/azure-terraform/Blueprints/_build/latest?definitionId=0)
# Creates an Azure Automation Account
Creates an Azure Automation Account


Reference the module to a specific version (recommended):
```hcl
module "automation" {
    source  = "aztfmod/caf-automation/azurerm"
    version = "0.x.y"
    
    auto_name               = var.auto_account
    resource_group_name     = var.rg
    location                = var.location["region1"] 
    tags                    = var.tags
    la_workspace_id         = var.log_analytics_workspace.id
    diagnostics_map         = var.diagnostics_map
}
```

# Parameters
## auto_name
(Required) Name for the automation account
```hcl
variable "auto_name" {
    description = "(Required) Name for the automation account"
}

```
Example
```hcl
auto_name = "myautomation"
```

## resource_group_name
(Required) Name of the resource group to deploy the automation account.
```hcl
variable "resource_group_name" {
  description = "(Required) Resource group for automation account"
}
```
Example
```hcl
resource_group_name = "operations-rg"
```

## location
(Required) Define the region where the ASR vault will be created.

```hcl
variable "location" {
  description = "(Required) Define the region where the ASR vault will be created"
  type        = string
}
```
Example
```hcl
    location    = "southeastasia"
```

## tags
(Required) Map of tags for the deployment
```hcl
variable "tags" {
  description = "(Required) map of tags for the deployment"
}
```
Example
```hcl
tags = {
    environment     = "DEV"
    owner           = "Arnaud"
    deploymentType  = "Terraform"
  }
```

## la_workspace_id
(Required) Log Analytics Repository ID
```hcl
variable "la_workspace_id" {
  description = "Log Analytics Repository"
}
```
Example
```hcl
la_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/arnaud-hub-operations/providers/microsoft.operationalinsights/workspaces/mylalogs"
```

## diagnostics_map
(Required) Map with the diagnostics repository information"
```hcl
variable "diagnostics_map" {
 description = "(Required) Map with the diagnostics repository information"
}
```
Example
```hcl
  diagnostics_map = {
      diags_sa      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.Storage/storageAccounts/opslogskumowxv"
      eh_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/arnaud-hub-operations/providers/Microsoft.EventHub/namespaces/opslogskumowxv"
      eh_name       = "opslogskumowxv"
  }
```

## diagnostics_settings
(Required) Map with the diagnostics settings for automation account deployment.
See the required structure in the following example or in the diagnostics module documentation.

```hcl
variable "diagnostics_settings" {
 description = "(Required) Map with the diagnostics settings for ASR deployment"
}
```
Example
```hcl
diagnostics_settings = {
    log = [
                # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period] 
                ["JobLogs", true, true, 30],
                ["JobStreams", true, true, 30],
                ["DscNodeStatus", true, true, 30],
        ]
    metric = [
                # ["Category name",  "Metric Enabled(true/false)", "Retention Enabled(true/false)", Retention_period] 
                ["AllMetrics", true, true, 30],
    ]
}
```

## convention
(Required) Naming convention to be used.
```hcl
variable "convention" {
  description = "(Required) Naming convention used"
}
```
Example
```hcl
convention = "cafclassic"
```



# Outputs

| Name | Type | Description | 
| -- | -- | -- | 
| object | object | Returns the full object of the created Azure automation account. |
| name | string | Returns the name of the created Azure automation account. |
| id | string | Returns the ID of the created Azure automation account. | 
