resource "aws_security_group" "public" {
  name_prefix = "${local.prefix}-sg-public"
  description = "Public Security Group"
  vpc_id = aws_vpc.this.id

  ingress  {
    from_port =  80
    to_port =  80
    protocol = "tcp"
    security_groups = [aws_security_group.alb-public-sg.id]
  }

  ingress  {
    from_port = 0
    to_port = 0
    protocol=  "-1" #Indicamos que no hay restriccion de protocolo
    cidr_blocks = [ "0.0.0.0/0" ]
  }

    
  egress  {
    from_port = 0
    to_port = 0
    protocol=  "-1" #Indicamos que no hay restriccion de protocolo
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  depends_on = [ aws_vpc.this ]

}