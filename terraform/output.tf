output "vpc_id" {
  value = aws_vpc.this.id
}
output "s3_id" {
    value = aws_s3_bucket.this.id
}

output "sg-public" {
  value = aws_security_group.public.id
}

output "sg-private" {
  value = aws_security_group.private.id
}

output "sg-alb-public" {
  value = aws_security_group.alb-public-sg.id
}

output "sg-alb-private" {
  value = aws_security_group.alb-private-sg.id
}

output "public-subnet-1" {
  value = aws_subnet.public-subnet-1.id
}

output "public-subnet-2" {
  value = aws_subnet.public-subnet-2.id
}

output "public-private-1" {
  value = aws_subnet.private-subnet-1.id
}
output "public-private-2" {
  value = aws_subnet.private-subnet-2.id
}

output "ig-id" {
  value = aws_internet_gateway.this.id
  
}

output "nat-id" {
  value = aws_nat_gateway.nat.id
}

output "ec2-public-1-id" {
  value = aws_instance.ec2-public-1[0].id
  
}

output "ec2-public-2-id" {
  value = aws_instance.ec2-public-2[0].id
  
}

output "ec2-private-1-id" {
  value = aws_instance.ec2-private-1.id
  
}

output "ec2-private-2-id" {
  value = aws_instance.ec2-private-2.id
  
}

output "alb-public-id" {
  value = aws_lb.external-alb.id
  
}

output "alb-private-id" {
  value = aws_lb.internal-alb.id
  
}

output "dns_alb_pb_name" {
  value = aws_lb.external-alb.dns_name
  
}