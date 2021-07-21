variable "namespace" {
    description = "The project namespace to use for unique resource naming"
    type = string
}

variable "ssh_keypair" {
    description = "SSH Keypair to use for EC2 instance"
    type = string
    default = null
}

variable "region" {
    description = "AWS Region"
    type = string
    default = "us-east-1"
}

