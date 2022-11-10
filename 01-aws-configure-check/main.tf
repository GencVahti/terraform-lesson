terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  # access_key = "my-access-key"
  # secret_key = "my-secret-key"
  ## profile = "my-profile"
}

resource "aws_instance" "my-first-tf-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  tags = {
    "Name" = "created-by-vhtgnc"
  }
}