terraform {
	required_version = "0.11.14"
	required_providers {
		region = "us-east-1"
		aws = {
			version = ">=2.7.0"
		}
	}
}