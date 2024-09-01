provider "aws" {
    profile = "default"
    alias = "default"
}


provider "aws" {
    profile = "account2"
    alias = "account2"
  
}

resource "aws_s3_bucket" "name" {
    provider = aws.default
    bucket = "mumbai-east"
  
}

resource "aws_s3_bucket" "vamsi" {
    provider = aws.account2
    bucket = "us-bucket83648474"
  
}