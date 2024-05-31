locals {
  resource_instances = {
    for key, value in var.resource_map :
    key => module.final_name[key].resource_name
  }
}

module "final_name" {
  source            = "../naming-module"

  for_each          = var.resource_map

  resource_type     = each.key
  base_name         = each.value
}

output "resource_instances" {
  value             = local.resource_instances
  description       = "Output of original base_name to desired default names."
}