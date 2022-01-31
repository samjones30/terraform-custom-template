terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.27"
    }
  }

    backend "s3" {
      key    = "terraform-custom-template.tfstate"
      region = "eu-west-2"
      bucket = "terraform-state-test-007884231807"
   }

  required_version = ">=1.0.0"

}

provider "aws" {
  region  = "eu-west-2"
}