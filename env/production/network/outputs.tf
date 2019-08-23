output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}
output "vpc_arn" {
  value = "${module.vpc.vpc_arn}"
}
output "public_subnet_cidr_blocks" {
  value  = "${module.vpc.public_subnet_cidr_blocks}"
}
output "private_subnet_cidr_blocks" {
  value = "${module.vpc.private_subnet_cidr_blocks}"
}
output "public_subnet_ids" {
  value = "${module.vpc.public_subnet_ids}"
}
output "private_subnet_ids" {
  value = "${module.vpc.private_subnet_ids}"
}