## Use modules once this works. 


# 1. Separate out and build only the root/parent compartments
resource "oci_identity_compartment" "parents" {
  # Filter the map to only include items where parent_key is null
  for_each = { for k, v in var.compartments : k => v if v.parent_key == null }

  compartment_id = var.tenancy_ocid
  name           = each.value.name
  description    = each.value.description
  enable_delete  = true
}

# 2. Build the subcompartments by referencing the parent resource block
resource "oci_identity_compartment" "children" {
  # Filter the map to only include items that have a parent_key
  for_each = { for k, v in var.compartments : k => v if v.parent_key != null }

  # Look up the ID from the parents resource block created above
  compartment_id = oci_identity_compartment.parents[each.value.parent_key].id
  name           = each.value.name
  description    = each.value.description
  enable_delete  = true
}