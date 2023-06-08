resource "aws_lb" "internal-alb" {
  name = "Backend"
  internal = false
  load_balancer_type = "application"
  security_groups = [ aws_security_group.alb-private-sg.id ]
  subnets = [ aws_subnet.private-subnet-2.id , aws_subnet.public-subnet-1.id]
}

resource "aws_lb_target_group" "internal-target-group" {
    name = "Internal-Alb-Target-Group"
    port = 3000
    protocol = "HTTP"
    vpc_id = aws_vpc.this.id
}

resource "aws_lb_target_group_attachment" "internal-attachment-1" {
  target_group_arn = aws_lb_target_group.internal-target-group.arn
  target_id = aws_instance.ec2-private-1.id
  port = 3000
}

resource "aws_lb_target_group_attachment" "internal-attachment-2" {
  target_group_arn = aws_lb_target_group.internal-target-group.arn
  target_id = aws_instance.ec2-private-2.id
  port = 3000
}


resource "aws_lb_listener" "internal-alb" {
  load_balancer_arn = aws_lb.internal-alb.arn
  port              = "3000"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.internal-target-group.arn
  }
}