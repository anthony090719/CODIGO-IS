resource "aws_security_group" "alb-private-sg" {
  name_prefix = "${local.prefix}-sg-alb-private"
  description = "Private Alb Security Group"
  vpc_id = aws_vpc.this.id

  ingress {
    from_port = 3000
    to_port = 3000
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