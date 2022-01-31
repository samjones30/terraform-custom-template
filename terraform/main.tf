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

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.s3_bucket.id
  key    = "index.html"
  acl    = "public-read"
  

  source       = "../src/index.html"  
  etag         = filemd5("../src/index.html")
  content_type = "text/html"

}
