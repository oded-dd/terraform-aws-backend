# aws_dynamodb_table

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attribute | (Required) Define an attribute | list | - | yes |
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| hash_key | (Required) The attribute to use as the hash key (the attribute must also be defined as an attribute record | string | - | yes |
| name_prefix | (Required) The name of the table, this needs to be unique within a region | string | - | yes |
| point_in_time_recovery | (Optional) Point-in-time recovery options | list | `<list>` | no |
| read_capacity | (Required) The number of read units for this table | string | - | yes |
| server_side_encryption | (Optional) Encrypt at rest options | list | `<list>` | no |
| tags | (Optional) A mapping of tags to assign to the table | map | `<map>` | no |
| write_capacity | (Required) The number of write units for this table | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_dynamodb_table_arn | The arn of the table |
| this_dynamodb_table_id | The name of the table |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
