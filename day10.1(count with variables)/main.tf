resource "aws_instance" "gaara" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    count = length(var.gaara)

    tags = {
      Name = var.gaara[count.index]
    }
  
}