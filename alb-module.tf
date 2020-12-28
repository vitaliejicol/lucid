module "alb" {
  source          = "./modules/elastic_lb"
  region          = "us-east-1"
  alb-name        = "application-load-balancer"
  internal        = false
  security-groups = ["${module.security_group.security-group}"]
  public-subnets  = "${module.vpc.public-subnets-ids}"
  alb-tag         = "Lucid Application Load Balancer"
}

output "lb_address" {
  value = "${module.alb.aws-alb}"
}
