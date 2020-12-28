module "rds" {
  source                 = "./modules/rds"
  region                 = "us-east-1"
  allocated-storage      = 20
  storage-type           = "gp2"
  instance-class         = "db.t2.micro"
  rds-name               = "mydb"
  user-name              = "easy"
  pass-word              = "hard"
  vpc-security-group-ids = ["${module.security_group.security-group}"]
  db-subnet-group-name   = "${module.vpc.private-subnet-ids}"
}
