variable "ingress_ports" {
  type = list(number)
  default = [ 443, 22, 8080, 9090, 5990 ]
}

variable "environment"{
  type= string
  default= dev
}

variable "cidr" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

variable "availability_zones" {
  type = string
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "profile"{
  type= string
  default= "First"
}

variable "second_profile"{
  type= string
  default= "Second"
}

variable "ec2_ami"{
  type=string
  default=""
}

variable "instance_type"{
  type = string
  default= "t2.micro"
}


variable "aws_region"{
  type = string
  default = ""
}

variable "second_aws_region"{ 
  type = string
  default = ""
}

