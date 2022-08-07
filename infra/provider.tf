terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    backend "s3" {
        bucket = "apollo-federation-aws-appsync"
        key = "state/"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}