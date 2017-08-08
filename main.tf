module "tf_label" {
  source    = "git::https://github.com/cloudposse/tf_label.git?ref=0.1.0"
  namespace = "${var.namespace}"
  stage     = "${var.stage}"
  name      = "${var.name}"
}

resource "aws_ami_from_instance" "default" {
  name                    = "${module.tf_label.id}"
  source_instance_id      = "${var.source_instance_id}"
  snapshot_without_reboot = "true"
  tags                    = "${module.tf_label.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
