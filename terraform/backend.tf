terraform {
  backend "s3" {
    bucket  = "emctx-terraform-ecs2"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}