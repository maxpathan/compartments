## VARIABLES ##
# 1. Define your input variables
#variable "tenancy_ocid" {
#  type        = string
#  description = "The OCID of your root tenancy."
#}

variable "compartments" {
  type = map(object({
    name        = string
    description = string
    level       = number
    parent_key  = string # Use null for root-level, or the map key of another compartment
  }))
}

## OCI provider configuration 

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
