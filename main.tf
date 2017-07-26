resource "aws_ami_from_instance" "create_ami" {
  name               = "${var.name}"
  source_instance_id = "${var.source_instance_id}"
  snapshot_without_reboot = "true"
  tags = "${var.tags}"
  lifecycle {
    create_before_destroy = true
  }
}
