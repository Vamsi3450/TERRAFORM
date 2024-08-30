resource "aws_instance" "myec2" {
     ami = "ami-0490fddec0cbeb88b"
    instance_type = "t2.micro"
     count = "2"
     tags = {
       Name = "vamsi-${count.index}"
     }
 }