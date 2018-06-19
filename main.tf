module "s3_bucket" {
  source           = "./modules/s3_bucket"
  
  name_prefix                          = "${var.identifier}" 
  acl                                  = "${var.acl}"
  policy                               = "${var.policy}"
  force_destroy                        = "${var.force_destroy}"
  versioning                           = "${var.versioning}"
  logging                              = "${var.logging}"
  region                               = "${var.region}"
  
  replication_configuration            = "${var.replication_configuration}"
  server_side_encryption_configuration = "${var.server_side_encryption_configuration}"

  create_backend_policy                = "${var.create_backend_policy}"
  principal                            = "${var.principal}"

  tags                                 = "${var.tags}"
}

module "dynamodb_table" {
  source                               = "./modules/dynamodb_table"

  create                               = "${var.create_dynamodb_table}"
  name_prefix                          = "${var.identifier}"
  hash_key                             = "${var.hash_key}"
  write_capacity                       = "${var.write_capacity}" 
  read_capacity                        = "${var.read_capacity}"

  attribute                            = "${var.attribute}"

  server_side_encryption               = "${var.server_side_encryption}"
  point_in_time_recovery               = "${var.point_in_time_recovery}" 

  tags                                 = "${var.tags}"
}

resource "null_resource" "this" {
  triggers = {
    s3_backend = "${module.s3_bucket.this_s3_bucket_arn}"
    dynamodb_backend = "${module.dynamodb_table.this_dynamodb_table_arn}"
  }

  provisioner "local-exec" {
    command = "${path.module}/terraform-backend-deployment.sh ${var.identifier} ${path.module}/state"
  }
}
