terraform {
  backend "s3" {
    bucket = "vamsibucket3450144444eee"
    key    = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }
}
