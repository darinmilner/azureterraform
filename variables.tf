variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"
}

variable "environment" {
  description = "Environment Name"
  type        = set(string)
  default     = ["dev1", "qa1", "prod1"]
}

variable "environment_name" {
  description = "Current Environment Name"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
  validation {
    condition     = can(regex("us$", var.resource_group_location))
    error_message = "Resources can only be created in eastus or eastus2 location."
  }
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}

variable "subnet_name" {
  description = "Virtual Network Name"
  type        = string
}


variable "vn_address_space_dev" {
  description = "Virtual Netword Address"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "vn_address_space_all" {
  description = "Virtual Network Address-all other env"
  type        = list(string)
  default     = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16"]
}


#Public IP SKU
variable "public_ip_sku" {
  description = "Azure Public IP SKU"
  type        = map(string)
  default = {
    "eastus"  = "Basic",
    "eastus2" = "Standard"
  }
}

variable "common-tags" {
  description = "Common Tags"
  type        = map(string)
  default = {
    "CLITool" = "Terraform",
    "Tag1"    = "Azure"
  }

}

# variable "db_name" {
#   description = "Azure MySQL DB Name"
#   type        = string
# }


# variable "db_username" {
#   description = "Azure MySQL DB Admin UserName"
#   type        = string
#   sensitive   = true
# }


# variable "db_password" {
#   description = "Azure MySQL DB Password"
#   type        = string
#   sensitive   = true
# }

# //DB storage
# variable "db_storagemb" {
#   description = "Azure MySQL Storage MB"
#   type        = number
# }

# variable "db_autogrow_enabled" {
#   description = "MySQL DB enable or disable Autogrow"
#   type        = bool
# }

# variable "tdpolicy" {
#   description = "Azure MySQL DB Threat Detection Policy"
#   type = object({
#     enabled              = bool
#     retention_days       = number
#     email_account_admins = bool
#     email_addresses      = list(string)
#   })
# }

# variable "tdpolicy-tuple" {
#   description = "Azure MySQL DB Threat Detection Policy (tuple)"
#   type = tuple([
#     bool,
#     number,
#     bool,
#     list(string)
#   ])
# }
