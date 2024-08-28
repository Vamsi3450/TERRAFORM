resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "VAMSI_VPC"
    }
  
}

resource "aws_subnet" "pub1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-2a"
    tags = {
      Name = "SUBNET1"
    }

  
}

resource "aws_internet_gateway" "int" {
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "INT"
    }
  
}


resource "aws_subnet" "pub2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-2b"
    tags = {
      Name = "SUBNET2"
    }
}

resource "aws_route_table" "RT" {
    vpc_id = aws_vpc.name.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.int.id
    }
  
}

resource "aws_route_table_association" "name" {
    route_table_id = aws_route_table.RT.id
    subnet_id = aws_subnet.pub1.id
  
}

resource "aws_security_group" "SG" {
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "SG"
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}

resource "aws_instance" "ec2" {
    instance_type = "t2.micro"
    key_name = "v"
    ami = "ami-0490fddec0cbeb88b"
  
}