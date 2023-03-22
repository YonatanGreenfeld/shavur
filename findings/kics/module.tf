# resource "aws_s3_bucket" "positive1" {
#   bucket = "example"
# }

# resource "aws_s3_bucket_public_access_block" "positive23" {
#   bucket = aws_s3_bucket.example.id

#   block_public_acls   = false
#   block_public_policy = false
#   ignore_public_acls  = false
#   restrict_public_buckets = true
# }

# resource "aws_s3_bucket_public_access_block" "positive3" {
#   bucket = aws_s3_bucket.example.id

#   block_public_policy = true
#   ignore_public_acls  = false
#   restrict_public_buckets = false
# }
