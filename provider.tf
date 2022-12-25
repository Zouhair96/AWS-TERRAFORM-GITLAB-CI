provider "aws" {

 # access_key = "AKIAYGCPNFK6X6PLDYHM"
 # secret_key = "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"
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



