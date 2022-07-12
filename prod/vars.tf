#---prod/vars.tf---

variable "vpc_cider" {
    default = "19.168.0.0/16"
}
variable "tenancy" {
    value = default
}
variable "subnet_cidr" {
    value = "192.168.1.0/24"
}

variable "ec2_count" {
    value = 1
}

variable "instance_type" {
    value = "t2.micro"
}

variable "ami_id" {
    value = ""
}
variable "region" {
    default = "us-east-1"
}