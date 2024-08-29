terraform {
  backend "s3" {
    bucket = "vamsibucket3450144444eeee"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }
}
