resource "aws_instance" "name" {
    instance_type = "t2.micro"
    key_name = "v"
    ami = "ami-0490fddec0cbeb88b"
  
}


resource "aws_dynamodb_table" "example_table" {
  name           = "my-lock-table"  # Replace with your desired table name
  billing_mode   = "PAY_PER_REQUEST"  # On-demand capacity mode
  hash_key       = "LockID"  # Partition key (primary key)

  attribute {
    name = "LockID"
    type = "S"  # S stands for String type
  }

  tags = {
    Environment = "dev"
    Project     = "my-project"
}
}