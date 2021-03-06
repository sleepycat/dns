provider "aws" {
  region  = "us-east-1"
  version = "~> 2.70"
}

terraform {
  backend "s3" {
    bucket = "cds-dns-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
