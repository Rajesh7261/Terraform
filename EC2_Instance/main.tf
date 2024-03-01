resource "aws_instance" "ec2" {
  count = length(aws_subnet.subnets.*.id)
  ami           = var.ec2_ami
  instance_type = var.instance_type
  vpc_security_group_ids = aws_security_group.ec2-sg.id
  subnet_id = aws_subnet.subnets[count].id

  tags = {
    Name = "${var.environment}-${count.index+1}"
  }
}
