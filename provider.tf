terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "temsfidelitybank-tfstate-778477254805"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "temsfidelitybank-tf-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}