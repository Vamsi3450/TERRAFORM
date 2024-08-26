variable "instance_type" {
description = "The type of instance to use"
type        = string
default     = "t2.micro"
}

variable "ami" {
    description = "the ami to use"
    type = string
    default = "ami-0490fddec0cbeb88b"
}

variable "key_name" {
    description = "the key name to use"
    type = string
    default = "v"

}