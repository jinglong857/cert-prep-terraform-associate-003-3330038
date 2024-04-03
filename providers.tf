terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform"
  # Configuration options
}

provider "aws" {
  alias = "west"
  region = "us-west-1"
  profile = "terraform"
}

