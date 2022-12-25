provider "aws" {

  //profile = "zouhaier"
  access_key = "AKIARHVDGYJY4GQBLCXW"
  secret_key = "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"
  region     = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  backend "s3" {
    region  = "us-east-1"
    key     = "/env/dev/terraform.tfstate"
    bucket  = "aws-terraform-gitlabci-bucket"
  }
  }

}

data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN


