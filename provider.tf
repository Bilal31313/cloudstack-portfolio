# provider.tf

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # you can change to latest if needed
    }
  }
}

provider "aws" {
  region = "eu-west-2"   # London region, adjust if needed
}
