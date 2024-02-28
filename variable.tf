variable "aws_region" {
  type = string
  default = ""
}

variable "profile" {
  type = string
}

variable "ec2_ami" {
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = ""
}

variable "ec2_keypair" {
  type = string
  default = ""
}

variable "ec2_count" {
  type = number
  default = ""
}

variable "environment" {
  type = string
  default = ""
}

variable "product" {
  type = string
  default = ""
}
variable "vpc_id" {
  type = string
  default = "vpc-a55717cd"
}
variable "subnets" {
   default = ["subnet-5d861027","subnet-e33e9baf","subnet-70713b19"]
}
