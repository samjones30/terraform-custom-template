resource "aws_s3_bucket" "s3_bucket" {
  bucket = local.public_bucket_name
  acl    = "public-read"

  policy = <<EOF
{
  "id" : "MakePublic",
  "version" : "2012-10-17",
  "statement" : [
    {
      "action" : [
        "s3:GetObject"
      ],
      "effect" : "Allow",
      "resource" : "arn:aws:s3:::${llocal.public_bucket_name}/*",
      "principal" : "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
  }
}
