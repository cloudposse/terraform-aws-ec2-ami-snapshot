variable "namespace" {}
variable "stage" {}
variable "name" {}
variable "source_instance_id" {}

variable "snapshot_without_reboot" {
  default = "true"
}

variable "delimiter" {
  default = "-"
}

variable "attributes" {
  type    = "list"
  default = []
}

variable "tags" {
  type    = "map"
  default = {}
}
