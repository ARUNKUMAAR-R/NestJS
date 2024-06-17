## Author : ARUNKUMAAR R
## Description : Variables for configuring AWS VPC
## Date : 17/06/24


variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "CIDR" {
  default = "172.16.0.0/16"
}

variable "CIDR-PUBLIC" {
  default = "172.16.1.0/24"
}
