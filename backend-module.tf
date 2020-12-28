module "backend" {
  source = "./modules/backend"

  region      = "us-east-1"
  bucket-name = "vitalie-jicol"
  acl         = "private"
}
