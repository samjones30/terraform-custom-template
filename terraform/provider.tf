terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }

    backend "s3" {
      bucket = var.backend_bucket
      region = var.region
   }

  required_version = ">=1.0.0"

}

provider "aws" {
  version = "~>3.0"
  region  = var.region
}