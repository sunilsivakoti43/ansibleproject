provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-01a00762f46d584a1"
instance_type = "t3.micro"
key_name = "anisble"
vpc_security_group_ids = ["sg-0dbac3cf2f9a38860"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "APPSERVER-1", "APPSERVER-2", "Monitoring server"]
}
