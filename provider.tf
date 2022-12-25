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
   # backend "s3" {
    #region  = "us-east-1"
    #key     = "environment/dev/terraform.tfstate"
    #bucket  = "aws-terraform-gitlabci-bucket"
  #}

}

data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN



