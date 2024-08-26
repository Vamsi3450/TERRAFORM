variable "ami" {
    description = "passing ami value"
    type = string
    default = "ami-0490fddec0cbeb88b"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "v"
  
}
variable "name" {
  description = "The name of the EC2 instance."
  default = "VK"
}