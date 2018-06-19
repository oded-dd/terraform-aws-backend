data "template_file" "backend" {
  template = "${file("${path.module}/policy/backend.tpl")}"

  vars {
    principal    = "${var.principal}"
    arn          = "arn:aws:s3:::${var.name_prefix}"
  }
}

resource "aws_s3_bucket" "this" {
  bucket                               = "${var.name_prefix}"
  acl                                  = "${var.acl}"
  policy                               = "${var.create_backend_policy ? data.template_file.backend.rendered : var.policy}"
  force_destroy                        = "${var.force_destroy}"
  versioning                           = "${var.versioning}"
  logging                              = "${var.logging}"
  region                               = "${var.region}"
  replication_configuration            = "${var.replication_configuration}"
  server_side_encryption_configuration = "${var.server_side_encryption_configuration}"

  tags                                 = "${merge(var.tags, map("Name", format("%s", var.name_prefix)))}"

  lifecycle {
    prevent_destroy = true
  }
}
