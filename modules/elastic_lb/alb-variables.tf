variable "region" {
  default = "us-east-1"
}

variable "alb-name" {
  default = "Load Balancer"
}

variable "internal" {
  default = "false"
}

variable "security-groups" {
  type = "list"
}

variable "public-subnets" {
  type = "list"
}

variable "alb-tag" {
  default = "Load Balancer"
}

variable "load-balancer-type" {
  default = ""
}
