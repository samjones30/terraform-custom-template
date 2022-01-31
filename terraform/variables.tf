variable "public_bucket_name" {
  type        = map(string)
  description = "The public bucket name for the S3 bucket"
  default     = "sams-test-website-bucket-test"
}

variable "region" {
  default = "eu-west-2"
}
