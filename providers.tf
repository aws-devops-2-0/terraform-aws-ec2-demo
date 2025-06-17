#terraform-ec2-demo/providers.tf

terraform {
   required_providers {
	aws = {
	  source = "hashicorp/aws"
	  version = "~> 5.0" #Use compatible version
        }
    }
required_version = ">= 1.2.0"
}

#Congigure the AWS Provider

provider "aws" {
 region = "us-east-1"
}
