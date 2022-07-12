# ---dev enviro---

provider "aws" {
    region = "${var.region}"
}

module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "${var.vpc_cidr}"
    tenancy = default
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "${var.subnet_cidr}"
}

module "my_ec2" {
    source = "../module/ec2"
    ec2_count = "${var.ec2_count}"
    ami_id = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    subnet_id = "${module.my_vpc.subnet_id}"
}