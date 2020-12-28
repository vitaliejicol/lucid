variable "region" {
  default = "us-east-1"
}

variable "key-name" {
  default = ""
}

variable "ami-id" {
  default = ""
}

variable "instance-type" {
  default = ""
}

variable "public-key-file-name" {
  default     = ""
  description = "Bastion Key"
}

variable "instance_count" {
  default = ""
}

variable "instance-name-tag" {
  default = ""
}

variable "vpc-security-group-ids" {
  default = ""
}

variable "subnet_id" {
  type    = "list"
  default = ["", "", ""]
}

variable "vpc-id" {
  default = ""
}
