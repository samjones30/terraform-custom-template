public_bucket_name = {
  test = "sams-test-website-bucket-test-${data.aws_caller_identity.current.account_id}"
  prod = "sams-test-website-bucket-prod-${data.aws_caller_identity.current.account_id}"
}