module "parent" {
  source                  = "../../parent-module"

  resource_map            = {
    "virtual_machine"     = "VirtualMachineAWS-West-2"
    "key_vault"           = "key-VAULT-Main"
    "storage_account"     = "Storage-Account-Blob"
  }
}

output "all_base_names" {
  value                   = module.parent.resource_instances
}