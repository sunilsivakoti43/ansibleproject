provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-01a00762f46d584a1"
instance_type = "t3.micro"
key_name = "anisbler"
vpc_security_group_ids = ["sg-0695ca6efe7293e4f"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tommer-1", "tommer-2", "Monitoring server"]
}
