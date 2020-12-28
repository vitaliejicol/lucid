variable "vpc-name" {
  default = ""
}

variable "region" {
  default = "us-east-1"
}

//////////////////////////////////
variable "internet-gateway-name" {
  default = ""
}

/////////////////////////////////
variable "map_public_ip_on_launch" {
  default = ""
}

variable "public-subnets" {
  default = ""
}

//////////////////////////////
variable "public-subnet-routes-name" {
  default = ""
}

/////////////////////////////
variable "total-nat-gateway-name" {
  default = ""
}

/////////////////////////////
variable "eip-for-nat-gateway-name" {
  default = ""
}

/////////////////////////////
variable "nat-gateway-name" {
  default = ""
}

/////////////////////////////
variable "private-route-cidr" {
  default = ""
}

////////////////////////////
variable "private-route-name" {
  default = ""
}

////////////////////////////
variable "vpc-cidr" {
  default = ""
}

////////////////////////////
variable "vpc-public-subnet-cidr" {
  type = "list"
}

///////////////////////////
variable "vpc-private-subnets-cidr" {
  type = "list"
}

///////////////////////////
// variable "private-subnet-name" {
// 	default = ""
// }
////////////////////////////
data "aws_availability_zones" "azs" {}

///////////////////////////
variable "total-nat-gateway-required" {
  default = ""
}

variable "public-subnets-name" {
  default = ""
}

// variable "total-nat-gateway-required" {
// 	default = ""
// }

variable "private-subnet-name" {
  default = ""
}

variable "vpc_id" {
  default = ""
}
