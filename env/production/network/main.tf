
provider "aws" {
 region = "eu-central-1"
}

terraform {
 backend "s3" {
 encrypt = true
 bucket = "tfrifiniti"
 region = "eu-central-1"
 dynamodb_table = "tfrifiniti"
 key = "prod/network"
 }
}

module "vpc" {
  source = "github.com/ElAntagonista/tf-rifiniti-modules/vpc/"
}


