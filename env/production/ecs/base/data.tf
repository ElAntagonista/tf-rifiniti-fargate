data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "tfrifiniti"
    key    = "prod/network"
    region = "eu-central-1"
  }
}

locals {
  vpc_id                     = "${data.terraform_remote_state.vpc.outputs.vpc_id}"
  vpc_arn                    = "${data.terraform_remote_state.vpc.outputs.vpc_arn}"
  public_subnet_cidr_blocks  = "${data.terraform_remote_state.vpc.outputs.public_subnet_cidr_blocks}"
  private_subnet_cidr_blocks = "${data.terraform_remote_state.vpc.outputs.private_subnet_cidr_blocks}"
  public_subnet_ids  = "${data.terraform_remote_state.vpc.outputs.public_subnet_ids}"
  private_subnet_ids = "${data.terraform_remote_state.vpc.outputs.private_subnet_ids}"

}
