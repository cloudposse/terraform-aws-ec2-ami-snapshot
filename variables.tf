variable "name" {
  default     = ""
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
}

variable "namespace" {
  default     = ""
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  default     = ""
}

variable "source_instance_id" {}

variable "snapshot_without_reboot" {
  default = "true"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`)"
}
