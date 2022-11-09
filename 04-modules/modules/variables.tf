variable "environment" {
  default = "vhtgnc"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "this is my vpc cidr block"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
  description = "this is my public subnet cidr block"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
  description = "this is my private subnet cidr block"
}
