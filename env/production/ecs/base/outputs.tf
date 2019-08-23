output "vpc_id" {
  value = "${local.vpc_id}"
}

output "private_subnet_ids" {
  value = "${local.private_subnet_ids}"
}

output "task_execution_role_arn" {
  value = "${module.ecs_base.task_execution_role_arn}"
}

output "alb_sg_id" {
  value = "${module.ecs_base.alb_sg_id}"
}

output "alb_listener_arn" {
  value = "${module.ecs_base.alb_listener_arn}"
}

output "ecs_cluster_id" {
  value = "${module.ecs_base.ecs_cluster_id}"
}

output "ecr_url" {
  value = "${module.ecs_base.ecr_base_url}"
}

output "alb_url" {
  value = "${module.ecs_base.alb_domain_name}"
}