provider "aws" {
  region = "${var.region}"
}

resource "aws_db_instance" "db" {
  allocated_storage      = "${var.allocated-storage}"
  storage_type           = "${var.storage-type}"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "${var.instance-class}"
  name                   = "${var.rds-name}"
  username               = "${var.user-name}"
  password               = "${var.pass-word}"
  parameter_group_name   = "default.mysql5.7"
  vpc_security_group_ids = ["${var.vpc-security-group-ids}"]
  db_subnet_group_name   = "${var.db-subnet-group-name}"

  tags = {
    Name = "${var.rds-name}"
  }
}

// resource "aws_db_subnet_group" "rds-instance-subnets" {
// 	name = "${var.rds-private-subnets-groups-name}"
// 	description = "${var.rds-private-subnets-groups-description}"
// 	subnet_ids = ["${var.aws-db-subnet-group-private-subnets}"]
// 	tags {
// 	  Name = "${var.name-aws-db-subnet-group}"
// 	}
// }

