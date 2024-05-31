variable "resource_map" {
  description                   = "A map of base_name to resource_type."
  type                          = map(string)
#   default = {
#     "virtual_machine"           = "this is a virtual machine"
#     "key_vault"                 = "keyVAULT"
#     "storage_account"           = "default-storage-account"
#   }
}