terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "NCPL-FirstOrganization"

    workspaces {
      name = "NCPL-FirstProject1-dev"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}