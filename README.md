 AWS Terraform Backend module
Terraform module which creates [Terraform backend](https://www.terraform.io/docs/backends/types/s3.html) on AWS

These types of resources are supported:

* [S3 Bucket](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)
* [DynamoDB table](https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html)

Root module calls these modules which can also be used separately to create independent resources:

* [s3_bucket/](https://github.com/oded-dd/terraform-aws-backend/tree/master/modules/s3_bucket) - creates S3 bucket resource
* [dynamodb_table](https://github.com/oded-dd/terraform-aws-backend/tree/master/modules/dynamodb_table) - creates DynamoDB table resource

## Prerequisite
- Create [Root User Access Keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html) temporarily.

## Usage
```hcl
module "terraform-backend" {
  source = "https://github.com/oded-dd/terraform-aws-backend"

  identifier = "terraform-state-backend"

  # ... omitted
}
```

## Conditional creation

There is also a way to disable dynamoDB table and/or S3 bucket policy resource creation like this:

```hcl
module "terraform-backend" {
  source = "https://github.com/oded-dd/terraform-aws-backend"

  identifier = "terraform-state-backend"
  create_dynamodb_table = false
  create_backend_policy = false

  # ... omitted
}
```

## Examples

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acl | (Optional) The canned ACL to apply | string | `private` | no |
| attribute | (Optional) Define an attribute | list | `<list>` | no |
| create_backend_policy | (Optional) Whether to create this resource or not | string | `false` | no |
| create_dynamodb_table | (Optional) Whether to create this resource or not | string | `true` | no |
| force_destroy | (Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error | string | `false` | no |
| hash_key | (Optional) The attribute to use as the hash key (the attribute must also be defined as an attribute record | string | `LockID` | no |
| identifier | (Required) backend name identifier | string | - | yes |
| logging | (Optional) A settings of bucket logging | list | `<list>` | no |
| point_in_time_recovery | (Optional) Point-in-time recovery options | list | `<list>` | no |
| policy | (Optional) A valid bucket policy JSON document | string | `` | no |
| principal | (Optional) The Amazon Resource Name (ARN) specifying the role | string | `*` | no |
| read_capacity | (Optional) The number of read units for this table | string | `2` | no |
| region | (Optional) If specified, the AWS region this bucket should reside in | string | `` | no |
| replication_configuration | (Optional) A configuration of replication configuration | list | `<list>` | no |
| server_side_encryption | (Optional) Encrypt at rest options | list | `<list>` | no |
| server_side_encryption_configuration | (Optional) A configuration of server-side encryption configuration | list | `<list>` | no |
| tags | (Optional) A mapping of tags to assign to the resource | map | `<map>` | no |
| versioning | (Optional) A state of versioning | list | `<list>` | no |
| write_capacity | (Optional) The number of write units for this table | string | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_s3_bucket_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| this_s3_bucket_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| this_s3_bucket_id | The name of the bucket |
| this_s3_bucket_id | The name of the bucket |
| this_s3_bucket_region | The AWS region this bucket resides in |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
