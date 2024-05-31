variable "resource_type" {
    description       = "The type of resource to be created. Vaules must be either 'virtual_machine', 'key_vault', and 'storage_account'."
    type              = string
    
    validation {
        condition     = contains(["virtual_machine", "key_vault", "storage_account", "region"], var.resource_type)
        error_message = "resource_type must only be one of the following 'virtual_machine', 'key_vault', or 'storage_account'. Verify your values entered"
    }
}

variable "base_name" {
    description       = "The base name for the resource."
    type              = string
}
