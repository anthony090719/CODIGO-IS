resource "aws_subnet" "private-subnet-1" {
  vpc_id = "${aws_vpc.this.id}"
  cidr_block = local.vpc.cidr_subnet_private_1
  availability_zone = "us-east-1a"

  tags = {
    Name        = "${local.prefix}-private-subnet-1"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/subnet-private.tf"
  }
  depends_on = [ aws_vpc.this ]
}


resource "aws_subnet" "private-subnet-2" {
  vpc_id = "${aws_vpc.this.id}"
  cidr_block = local.vpc.cidr_subnet_private_2
  availability_zone = "us-east-1b"

  tags = {
    Name        = "${local.prefix}-private-subnet-2"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/subnet-private.tf"
  }
  depends_on = [ aws_vpc.this ]
}