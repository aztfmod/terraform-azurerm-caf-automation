locals {
    convention = "random"
    name = "caftest"
    location = "southeastasia"
    prefix = ""
    resource_groups = {
        test = { 
            name     = "test-caf"
            location = "southeastasia" 
        },
    }
    tags = {
        environment     = "DEV"
        owner           = "CAF"
    }
    solution_plan_map = {
        NetworkMonitoring = {
            "publisher" = "Microsoft"
            "product"   = "OMSGallery/NetworkMonitoring"
        },
    }

    automation_name = "asr"

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
}