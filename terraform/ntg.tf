resource "aws_eip" "nat" {
  vpc = true
  tags = {
    Name        = "${local.prefix}-nat-eip"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ntg.tf"
  }
}

resource "aws_nat_gateway" "nat" {
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  allocation_id = aws_eip.nat.id
  tags = {
    Name        = "${local.prefix}-nat-gateway"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ntg.tf"
  }
}