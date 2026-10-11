data "oci_dataintegration_workspace_folders" "dataintegration_workspace_folders_lookup" {
  for_each = var.dataintegration_workspace_folders_lookup

  workspace_id   = each.value.workspace_id
  aggregator_key = each.value.aggregator_key
  fields         = each.value.fields
  identifier     = each.value.identifier
  name           = each.value.name
  name_contains  = each.value.name_contains

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

