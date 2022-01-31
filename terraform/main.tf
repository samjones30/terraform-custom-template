resource "aws_s3_bucket" "s3_bucket" {
  bucket    = var.public_bucket_name
  acl       = "public-read"

  policy    = <<EOF
{
  "id" : "MakePublic",
  "version" : "2012-10-17",
  "statement" : [
    {
      "action" : [
        "s3:GetObject"
      ],
      "effect" : "Allow",
      "resource" : "arn:aws:s3:::${var.public_bucket_name}-${data.aws_caller_identity.current.account_id}/*",
      "principal" : "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
  }
}
