resource "aws_security_group" "private" {
  name_prefix = "${local.prefix}-sg-private"
  description = "Private Security Group"
  vpc_id = aws_vpc.this.id

  ingress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [local.vpc.cidr_subnet_public_1,local.vpc.cidr_subnet_public_2]
    }

  ingress{
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    security_groups = [ aws_security_group.alb-private-sg.id ]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  depends_on = [
    aws_vpc.this
  ]

}
