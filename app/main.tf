provider "aws" {
  profile = "kops"
  region  = "ap-southeast-1"
}

locals {
  name = "duc-eks"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "duc-bucket"
}

# module "vpc" {
#   source = "../modules/vpc"

#   name = "${local.name}-vpc"
#   cidr = "10.129.0.0/16"

#   public_subnets = {
#     ap-southeast-1a = {
#       cidr = "10.129.0.0/22"
#     }
#     # ap-southeast-1b = {
#     #   cidr = "10.129.4.0/22"
#     # }
#     # ap-southeast-1c = {
#     #   cidr = "10.129.8.0/22"
#     # }
#   }

#   private_subnets = {
#     ap-southeast-1a = {
#       cidr = "10.129.64.0/18"
#     }
#     # ap-southeast-1b = {
#     #   cidr = "10.129.128.0/18"
#     # }
#     # ap-southeast-1c = {
#     #   cidr = "10.129.192.0/18"
#     # }
#   }

#   # database_subnets = {
#   #   ap-southeast-1a = {
#   #     cidr = "10.129.16.0/22"
#   #   }
#   #   ap-southeast-1b = {
#   #     cidr = "10.129.20.0/22"
#   #   }
#   #   ap-southeast-1c = {
#   #     cidr = "10.133.24.0/22"
#   #   }
#   # }
# }

# module "eks" {
#   source = "../modules/eks"

#   name   = local.name
# }
