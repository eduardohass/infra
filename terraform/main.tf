terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "angelo-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform_state"
  }
}