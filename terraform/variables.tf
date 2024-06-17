## Author : ARUNKUMAAR R
## Description : Variables for configuring AWS VPC
## Date : 17/05/24


variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "CIDR" {
  default = "10.0.0.0/16"
}

variable "CIDR-PUBLIC" {
  default = "10.0.1.0/24"
}
