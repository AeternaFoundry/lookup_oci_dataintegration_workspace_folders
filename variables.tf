variable "dataintegration_workspace_folders_lookup" {
  description = <<EOT
Map of dataintegration_workspace_folders_lookup, attributes below
Required:
    - workspace_id
Optional:
    - aggregator_key
    - fields
    - identifier
    - name
    - name_contains
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    workspace_id   = string
    aggregator_key = optional(string)
    fields         = optional(list(string))
    identifier     = optional(list(string))
    name           = optional(string)
    name_contains  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

