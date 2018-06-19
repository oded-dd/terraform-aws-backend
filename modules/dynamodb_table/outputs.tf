output "this_dynamodb_table_id" {
  description = "The name of the table"
  value       = "${element(concat(aws_dynamodb_table.this.*.id, list("")), 0)}"
}

output "this_dynamodb_table_arn" {
  description = "The arn of the table"
  value       = "${element(concat(aws_dynamodb_table.this.*.arn, list("")), 0)}"
}
