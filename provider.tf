provider "aws" {
  region = var.region
  
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

terraform {
  backend "s3" {
    # Replace this with your bucket name
    bucket = "ccseksdev01-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"

    #Replace this with your Dynamodb table name
    dynamodb_table = "ccseksdev01-dynamo-locks-eks"
    encrypt        = true
  }
}
