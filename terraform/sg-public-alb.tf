resource "aws_security_group" "alb-public-sg" {
  name_prefix = "${local.prefix}-sg-alb-public"
  description = "Public Alb Security Group"
  vpc_id = aws_vpc.this.id
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  depends_on = [ aws_vpc.this ]

}