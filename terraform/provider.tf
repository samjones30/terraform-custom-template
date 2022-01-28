terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.27"
    }
  }

    backend "s3" {
      key    = "terraform-custom-template.tfstate"
      region = var.region
   }

  required_version = ">=1.0.0"

}

provider "aws" {
  region  = var.region
}