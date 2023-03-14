terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "t_s3_bucket" {
  bucket = "ccseksdev01-terraform-state"
  
  lifecycle {
	prevent_destroy = true
  }
  
  versioning {
	enabled = true
  }
  
  server_side_encryption_configuration {
	rule {
		apply_server_side_encryption_by_default {
			sse_algorithm = "AES256"
		}
        }
  }
}

resource "aws_dynamodb_table" "t_dynamo_locks" {
	name = "ccseksdev01-dynamo-locks-eks"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	
	attribute {
		name = "LockID"
		type = "S"
	}
}

