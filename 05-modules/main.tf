provider "aws" {
  region = "us-east-1"
}

module "docker-instance" {
  source  = "GencVahti/docker-instance/aws"
  key_name = "my_new_key"
}