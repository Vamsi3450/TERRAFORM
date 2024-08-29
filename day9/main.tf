module "name" {
    source = "github.com/Vamsi3450/terraform/day3.2"
    ami = "ami-0490fddec0cbeb88b"
    instance_type = "t2.micro"
    key_name = "v"
}