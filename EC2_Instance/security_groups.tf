resource "aws_security_group" "ec2-sg" {
  name        = "${var.environment}-sg"

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port
    content {
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = ["98.87.76.56/32"]
    }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
    }
  }
