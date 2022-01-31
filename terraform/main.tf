resource "aws_s3_bucket" "s3_bucket" {
  bucket = local.public_bucket_name
  acl    = "public-read"

  policy = <<EOF
{
  "Id" : "MakePublic",
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Action" : [
        "s3:GetObject"
      ],
      "Effect" : "Allow",
      "Resource" : "arn:aws:s3:::${local.public_bucket_name}/*",
      "Principal" : "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
  }
}
