# Launch small machine with Ubunutu 18.04
# =======================================
# backend config stored as repo secrets
terraform {
  required_version = ">= 0.12.0"
  backend "s3" {
    encrypt = true
  }
}

provider "aws" {
  version = "~> 2.40"
  region  = var.region
}

resource "aws_instance" "scotts-machine" {
  ami           = var.amis[var.region]
  instance_type = var.instance
  tags = {
    Name = "scott test machine"
  }
}
