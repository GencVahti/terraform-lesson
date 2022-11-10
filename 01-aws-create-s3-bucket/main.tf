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
}

resource "aws_instance" "vhtgnc-tf-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  key_name      = "my_new_key"    # write your pem file without .pem extension>
  tags = {
    "Name" = "my-second-tf-ec2"
  }
}

resource "aws_s3_bucket" "vhtgnc-tf-s3" {
  bucket = "vhtgnc-tf-test-bucket"
}