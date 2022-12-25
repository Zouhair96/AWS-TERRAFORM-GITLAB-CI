provider "aws" {
  region     = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }


}

data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN



