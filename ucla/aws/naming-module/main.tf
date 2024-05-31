locals {
    truncated_base_name     = substr(var.base_name, 0, 15)

    resource_name_map = {
        virtual_machine     = length("vm-${var.base_name}-00") > 15 ? "vm-${local.truncated_base_name}-00" : "vm-${var.base_name}-00"
        key_vault           = "kv-${lower(var.base_name)}"
        storage_account     = "sa${replace( lower(var.base_name), "-", "")}"
    }

    resource_name           = lookup(local.resource_name_map, var.resource_type)
}

output "resource_name" {
    value                   = local.resource_name
    description             = "Computed results of base_name for each resource_type."
}
