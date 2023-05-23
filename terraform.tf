terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {

    bucket = "d-c-a-b-n-o"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "d-c-a-b-n"
    
  }
}