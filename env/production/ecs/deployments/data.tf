data "terraform_remote_state" "ecs-base" {
  backend = "s3"

  config = {
    bucket = "tfrifiniti"
    key    = "prod/ecs-base"
    region = "eu-central-1"
  }
}

locals {
  vpc_id             = "${data.terraform_remote_state.ecs-base.outputs.vpc_id}"
  private_subnet_ids = "${data.terraform_remote_state.ecs-base.outputs.private_subnet_ids}"
  
  ecs_cluster_id = "${data.terraform_remote_state.ecs-base.outputs.ecs_cluster_id}"

  alb_http_listener_arn = "${data.terraform_remote_state.ecs-base.outputs.alb_listener_arn}"

  task_execution_role_arn = "${data.terraform_remote_state.ecs-base.outputs.task_execution_role_arn}"

  ecr_url = "${data.terraform_remote_state.ecs-base.outputs.ecr_url}"

  alb_security_group = "${data.terraform_remote_state.ecs-base.outputs.alb_sg_id}"

}
