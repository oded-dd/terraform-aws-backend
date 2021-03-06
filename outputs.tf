output "this_s3_bucket_id" {
  description = "The name of the bucket"
  value       = "${module.s3_bucket.this_s3_bucket_id}"
}

output "this_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
  value       = "${module.s3_bucket.this_s3_bucket_arn}"
}

output "this_s3_bucket_region" {
  description = "The AWS region this bucket resides in"
  value       = "${module.s3_bucket.this_s3_bucket_region}"
}

output "this_dynamodb_table_id" {
  description = "The name of the table"
  value       = "${module.dynamodb_table.this_dynamodb_table_id}"
}

output "this_dynamodb_table_arn" {
  description = "The arn of the table"
  value       = "${module.dynamodb_table.this_dynamodb_table_arn}"
}
