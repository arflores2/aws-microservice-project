terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  profile = "angelrob"
}

resource "aws_ecr_repository" "app-repository" {
  name                 = "koffee-luv"
  image_tag_mutability = "MUTABLE"

  tags = {
    Env = "dev"
  }
}
