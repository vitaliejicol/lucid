provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "ec2" {
  ami           = "${var.ami-id}"
  instance_type = "${var.instance-type}"
  count         = "${var.instance_count}"
  key_name      = "${var.key-name}"

  //vpc_id					= "${var.vpc-id}"
  //public_key				= "${var.public-key-file-name}"
  vpc_security_group_ids = ["${var.vpc-security-group-ids}"]

  subnet_id = "${element(var.subnet_id, count.index)}"

  //user_data 				= var.user-data
  tags = {
    Name = "${var.instance-name-tag}-${count.index+1}"
  }
}
