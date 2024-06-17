## Author : ARUNKUMAAR R
## Description : Creating VPC and SG 
## Date : 17/06/24


resource "aws_vpc" "nestjs_vpc" {
  cidr_block = var.CIDR
  tags = {
    name = "vpc-nestjs"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.nestjs_vpc.id
  cidr_block        = var.CIDR-PUBLIC
  availability_zone = "us-east-1a"
}

resource "aws_internet_gateway" "nestjs_igw" {
  vpc_id = aws_vpc.nestjs_vpc.id
}



resource "aws_route_table" "public_subnet1_rt" {
  vpc_id = aws_vpc.nestjs_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.nestjs_igw.id
  }
}


resource "aws_route_table_association" "public_subnet1_rt" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_subnet1_rt.id
}
