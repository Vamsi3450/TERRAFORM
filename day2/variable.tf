variable "instance_type" {
description = "The type of instance to use"
type        = string
default     = "t2.micro"
}

variable "ami" {
    description = "the ami to use"
    type = string
    default = "ami-09efc42336106d2f2"
}

variable "key_name" {
    description = "the key name to use"
    type = string
    default = "v"

}
