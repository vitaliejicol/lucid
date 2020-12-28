module "ec2" {
  source               = "./modules/instance"
  region               = "us-east-1"
  public-key-file-name = "bastion-key"

  //public_key	= "${file("/.ssh/id_rsa.pub")}"
  ami-id         = "ami-096fda3c22c1c990a"
  instance-type  = "t2.micro"
  instance_count = "2"
  instance-name-tag = "Lucid Test"
  vpc-security-group-ids = "${module.security_group.security-group}"
  subnet_id              = "${module.vpc.private-subnet-ids}"
}

