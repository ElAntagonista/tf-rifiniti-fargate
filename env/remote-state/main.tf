provider aws { 
  region = "eu-central-1"
}

module "terraform-backend" {
  source = "github.com/ElAntagonista/tf-rifiniti-modules/common/terraform-aws-rs/"
  s3_bucket_name = "tfrifiniti"
  dynamodb_table_name = "tfrifiniti"
}

output "s3_bucket_domain_name" {
  value = "${module.terraform-backend.s3_bucket_domain_name}"
}

output "s3_bucket_regional_domain_name" {
  value = "${module.terraform-backend.s3_bucket_regional_domain_name}"
}
