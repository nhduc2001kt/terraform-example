terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17"
    }
  }

  backend "s3" {
    profile = "kops"
    region  = "ap-southeast-1"
    key     = "global/s3/terraform.tfstate"
    bucket  = "duc-bucket"
  }

  required_version = "~> 1.3"
}