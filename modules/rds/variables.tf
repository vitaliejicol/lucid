variable "region" {
  default = ""
}

variable "allocated-storage" {
  default = ""
}

variable "storage-type" {
  default = ""
}

variable "instance-class" {
  default = ""
}

variable "rds-name" {
  default = ""
}

variable "user-name" {
  default = ""
}

variable "pass-word" {
  default = ""
}

variable "vpc-security-group-ids" {
  type    = "list"
  default = []
}

variable "db-subnet-group-name" {
	type    = "list"
	default = ["", "", ""]
}