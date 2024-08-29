resource "aws_instance" "name" {
    instance_type = "t2.micro"
    key_name = "v"
    ami = "ami-0490fddec0cbeb88b"
    user_data = file("test.sh")
  
}

