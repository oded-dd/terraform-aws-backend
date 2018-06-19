resource "aws_dynamodb_table" "this" {
  count                  = "${var.create ? 1 : 0 }"

  name                   = "${var.name_prefix}"
  hash_key               = "${var.hash_key}"
  write_capacity         = "${var.write_capacity}" 
  read_capacity          = "${var.read_capacity}"

  attribute              = "${var.attribute}"

  server_side_encryption = "${var.server_side_encryption}"
  point_in_time_recovery = "${var.point_in_time_recovery}" 

  tags                   = "${merge(var.tags, map("Name", format("%s", var.name_prefix)))}"

  lifecycle {
    prevent_destroy = true
  }
}
