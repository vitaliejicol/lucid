module "vpc" {
  source                     = "./modules/vpc"
  vpc-name                   = "Lucid Test"
  region                     = "us-east-1"
  internet-gateway-name      = "lucid-igw"
  map_public_ip_on_launch    = "true"
  public-subnets-name        = "public-subnet"
  public-subnet-routes-name  = "public-subnet-routes"
  private-subnet-name        = "private-subnets"
  total-nat-gateway-required = 1
  eip-for-nat-gateway-name   = "eip-nat-gateway"
  nat-gateway-name           = "nat-gateway"
  private-route-cidr         = "0.0.0.0/0"
  private-route-name         = "private-route"
  vpc-cidr                   = "10.1.0.0/16"
  vpc-public-subnet-cidr     = ["10.1.1.0/24"]
  vpc-private-subnets-cidr   = ["10.1.2.0/24"]
}
