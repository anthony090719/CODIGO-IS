resource "aws_instance" "ec2-private-1" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.private.id]
  subnet_id = "${aws_subnet.private-subnet-1.id}"
  user_data = data.template_file.user_data_backend.rendered
  key_name = aws_key_pair.generated_key.key_name
  tags = {
    Name        = "${local.prefix}-ec2-private-1"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ec2-private.tf"
  }
  depends_on = [ aws_security_group.private,aws_subnet.private-subnet-1 ]
}


resource "aws_instance" "ec2-private-2" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.private.id]
  subnet_id = "${aws_subnet.private-subnet-1.id}"
  user_data = data.template_file.user_data_backend.rendered
  key_name = aws_key_pair.generated_key.key_name
  tags = {
    Name        = "${local.prefix}-ec2-private-2"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/ec2-private.tf"
  }
  depends_on = [ aws_security_group.private,aws_subnet.private-subnet-1 ]
}


data "template_file" "user_data_backend" {
  template = file("${path.module}/scripts/user-data-backend.sh")
}