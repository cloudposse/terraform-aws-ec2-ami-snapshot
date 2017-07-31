# tf_ami_from_instance

## Module usage

### Create an AWS instance
```
resource "aws_instance" "web" {
  ami = "ami-408c7f28"
  instance_type = "t1.micro"
  tags = { Name:test1 }
}
```

### Create AMI from an AWS instance. Instance ID is required"
```
module "tf_ami_from_instance" {
  source  = "github.com/cloudposse/tf_ami_from_instance"
  name = "ami-${md5(timestamp())}"
  source_instance_id = "${aws_instance.web.id}"
  tags = {
    Name = "${aws_instance.web.id}"
  }
}
```

## Caveats
* Terraform will only keep the latest AMI snapshot (terraform will delete the previously generated AMI) See our Lamda based solution which avoids this pitfall: https://github.com/cloudposse/tf_lambda_ami_backup
* This is is not compatible with autoscaling groups
