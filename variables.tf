variable "name" { default = "terraform-ami" }
variable "source_instance_id" {}
variable "tags" {
  type    = "map"
}
