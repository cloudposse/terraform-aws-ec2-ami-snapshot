output "ami_id" {
  value = "${aws_ami_from_instance.create_ami.id}"
}
