module "label" {
  source     = "git::https://github.com/cloudposse/tf_label.git?ref=0.2.0"
  namespace  = "${var.namespace}"
  stage      = "${var.stage}"
  name       = "${var.name}"
  attributes = "${var.attributes}"
  delimiter  = "${var.delimiter}"
  tags       = "${var.tags}"
}

resource "aws_ami_from_instance" "default" {
  name                    = "${module.label.id}"
  source_instance_id      = "${var.source_instance_id}"
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
  tags                    = "${module.label.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
