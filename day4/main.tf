resource "aws_s3_bucket" "vamsi" {
    bucket = "vamsibucket3450144444eeee"
  
}

resource "aws_instance" "vamsi" {
    instance_type = "t2.micro"
    key_name = "v"
    ami = "ami-0490fddec0cbeb88b"
  
}