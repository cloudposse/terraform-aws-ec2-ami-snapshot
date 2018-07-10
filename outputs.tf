output "ami_id" {
  description = "AMI ID depends on the instance type and region in which you're launching your stack. And IDs can change regularly, such as when an AMI is updated with software updates."
  value       = "${aws_ami_from_instance.default.id}"
}
