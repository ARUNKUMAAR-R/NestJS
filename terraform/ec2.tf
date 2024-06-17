## Author : ARUNKUMAAR R
## Description : Creating SG  and EC2
## Date : 17/06/24

resource "aws_security_group" "nestjs_sg" {
  name        = "NestJS_SG"
  vpc_id      = aws_vpc.nestjs_vpc.id
  description = "Security Group for NestJS Server"
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "3000"
    to_port     = "3000"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "NestJS-SG"
  }
}

resource "aws_instance" "nestjs" {
  ami                         = "ami-06784e9934d6ab0f5"
  instance_type               = "t2.small"
  vpc_security_group_ids         = [aws_security_group.nestjs_sg.id]
  associate_public_ip_address = true
  subnet_id = aws_subnet.public_subnet1.id
}
