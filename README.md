# tf_ami_from_instance

## Module usage

### Create an aws instance
```
resource "aws_instance" "web" {
  ami = "ami-408c7f28"
  instance_type = "t1.micro"
  tags = { Name:test1 }
}
```

## Create AMI from EBS of an aws instance. Instance ID is required"
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
