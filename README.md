# tf_ami_from_instance

## Module usage

### Create an AWS instance
```
resource "aws_instance" "default" {
  ami           = "ami-408c7f28"
  instance_type = "t1.micro"

  tags = {
    Name = "test1"
  }
}
```

### Create AMI from an AWS instance. Instance ID is required"
```
module "tf_ami_from_instance" {
  source             = "git::https://github.com/cloudposse/tf_ami_from_instance.git?ref=master"
  source_instance_id = "${aws_instance.web.id}"
  stage              = "${var.stage}"
  namespace          = "${var.namespace}"
  name               = "${var.name}"
  attributes         = "${var.attributes}"
  tags               = "${var.tags}"
}

```

## Caveats
* Terraform will only keep the latest AMI snapshot (terraform will delete the previously generated AMI) See our Lamda based solution which avoids this pitfall: https://github.com/cloudposse/tf_lambda_ami_backup
* This is is not compatible with autoscaling groups
