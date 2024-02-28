resource "aws_security_group" "ec2-sg" {
  name        = "${var.product}.${var.environment}-ec2-sg"
  vpc_id      = var.vpc_id

  dynamic "ingress"{
    for_each = var.ingress_ports
      content{
      from_port   = value.ingress
      to_port     = value.ingress
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.product}.${var.environment}-ec2-sg"
  }
}
