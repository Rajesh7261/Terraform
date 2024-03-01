terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
   region =   var.aws_region
   profile = var.profile
}

provider "aws" {
   alias =  "second"
   region =  var.second_aws_region
   profile = var.second_profile
}
