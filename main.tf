module "tf_label" {
  source = "github.com/cloudposse/tf_label"
  namespace = "${var.namespace}"
  stage = "${var.stage}"
  name = "${var.name}"
}


resource "aws_ami_from_instance" "create_ami" {
  name               = "${module.tf_label.id}"
  source_instance_id = "${var.source_instance_id}"
  snapshot_without_reboot = "true"
  tags = "${var.tags}"
  lifecycle {
    create_before_destroy = true
  }
}
