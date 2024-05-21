terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"

    }
  }

  backend "s3" {
    bucket = "nasa-remote-state"
    key    = "remote-state-nasa"
    region = "us-east-1"
    dynamodb_table = "nasa-demo-locking"
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}