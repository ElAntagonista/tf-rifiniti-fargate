provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "tfrifiniti"
    region         = "eu-central-1"
    dynamodb_table = "tfrifiniti"
    key            = "prod/ecs-base"
  }
}

module "ecs_base" {
  source            = "github.com/ElAntagonista/tf-rifiniti-modules/ecs/base/"
  vpc_id            = "${local.vpc_id}"
  alb_name          = "prod-rifiniti-alb"
  ecs_cluster_name  = "prod-rifiniti-ecs"
  ecr_repo_names    = ["tf-rifiniti-demo"]
  public_subnet_ids = "${local.public_subnet_ids}"
}





