provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "tfrifiniti"
    region         = "eu-central-1"
    dynamodb_table = "tfrifiniti"
    key            = "prod/ecs-deployments"
  }
}

module "hello-world-app" {
    source = "github.com/ElAntagonista/tf-rifiniti-modules/ecs/svc-deployment"
    vpc_id = "${local.vpc_id}"
    ecs_cluster_id = "${local.ecs_cluster_id}"
    alb_http_listener_arn = "${local.alb_http_listener_arn}"
    private_subnet_ids = "${local.private_subnet_ids}"
    app_name = "hello-world"
    app_port = "80"
    app_image = "tf-rifiniti-demo"
    task_execution_role_arn = "${local.task_execution_role_arn}"
    ecr_url = "${local.ecr_url}"
    alb_security_group = "${local.alb_security_group}"
}

