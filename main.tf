resource "aws_ami_from_instance" "create_ami" {
  name               = "${var.name}"
  source_instance_id = "${var.source_instance_id}"
  snapshot_without_reboot = "true"
  tags = "${var.tags}"
  lifecycle {
    create_before_destroy = true
  }
}

/*
resource "aws_ami_copy" "backup_ami" {
  name              = "${var.name}"
  description       = "A copy of ${aws_ami_from_instance.create_ami.id}"
  source_ami_id     = "${aws_ami_from_instance.create_ami.id}"
  source_ami_region = "us-east-1"
  depends_on = ["aws_ami_from_instance.create_ami"]

  tags = {
    Name = "${var.source_instance_id}"
  }
}
*/
