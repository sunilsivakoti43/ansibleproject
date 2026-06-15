provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0e38835daf6b8a2b9"
instance_type = "t2.medium"
key_name = "anisble"
vpc_security_group_ids = ["sg-0292a613d304fd897"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "APPSERVER-1", "APPSERVER-2", "Monitoring server"]
}
