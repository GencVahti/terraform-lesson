module "tf-vpc" {
  source = "../modules"
  environment = "prod"
  }

output "vpc-cidr-block" {
  value = module.tf-vpc.vpc_cidr
}