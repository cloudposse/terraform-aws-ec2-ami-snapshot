
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `policy` or `role`) | list | `<list>` | no |
| delimiter | Delimiter to be used between `name`, `namespace`, `stage`, etc. | string | `-` | no |
| name | The Name of the application or solution  (e.g. `bastion` or `portal`) | string | `` | no |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | string | `` | no |
| snapshot_without_reboot |  | string | `true` | no |
| source_instance_id |  | string | - | yes |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | `` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| ami_id | AMI ID depends on the instance type and region in which you're launching your stack. And IDs can change regularly, such as when an AMI is updated with software updates. |

