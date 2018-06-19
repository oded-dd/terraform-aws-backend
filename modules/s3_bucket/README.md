# aws_s3_bucket

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acl | (Optional) The canned ACL to apply | string | `private` | no |
| create_backend_policy | (Optional) Whether to create this resource or not | string | `false` | no |
| force_destroy | (Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error | string | `false` | no |
| logging | (Optional) A settings of bucket logging | list | `<list>` | no |
| name_prefix | (Required) backend key_prefix | string | - | yes |
| policy | (Optional) A valid bucket policy JSON document | string | `` | no |
| principal | (Optional) The Amazon Resource Name (ARN) specifying the role | string | `*` | no |
| region | (Optional) If specified, the AWS region this bucket should reside in | string | `` | no |
| replication_configuration | (Optional) A configuration of replication configuration | list | `<list>` | no |
| server_side_encryption_configuration | (Optional) A configuration of server-side encryption configuration | list | `<list>` | no |
| tags | (Optional) A mapping of tags to assign to the bucket | map | `<map>` | no |
| versioning | (Optional) A state of versioning | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_s3_bucket_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| this_s3_bucket_id | The name of the bucket |
| this_s3_bucket_region | The AWS region this bucket resides in |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
