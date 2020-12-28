

module "security_group" {
  source        = "./modules/security_group"
  security-name = "security"
  region        = "us-east-1"
  vpc_id        = "${module.vpc.vpc-id}"
}

output "vpcid-value" {
  value = "${module.vpc.vpc-id}"
}
