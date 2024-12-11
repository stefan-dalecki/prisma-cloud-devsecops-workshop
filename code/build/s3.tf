provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ce8fb180-904d-4ce3-8ca6-97e758a7ee44"
    git_commit           = "9a6bc3d0b83d9bf4b423bc0f1e072e7f19392302"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:31:00"
    git_last_modified_by = "89150776+stefan-dalecki@users.noreply.github.com"
    git_modifiers        = "89150776+stefan-dalecki"
    git_org              = "stefan-dalecki"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
