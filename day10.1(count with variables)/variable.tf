variable "ami" {
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

variable "gaara" {
    type = list(string)
    default = [ "UDAY","DIVYA" ]
  
}