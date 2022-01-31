variable "public_bucket_name" {
  type        = map(string)
  description = "The public bucket name for the S3 bucket"
}

variable "region" {
  default = "eu-west-2"
}

locals {
  public_bucket_name = var.public_bucket_name[terraform.workspace]-data.aws_caller_identity.current.account_id
}
