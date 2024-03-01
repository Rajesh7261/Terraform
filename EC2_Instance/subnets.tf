# Create subnets and instances dynamically
resource "aws_subnet" "subnets" {
  count = length(var.availability_zones)
  vpc_id            = "10.0.0.0/16"
  cidr_block        = element(var.cidr, count.index)
  availability_zone = var.availability_zones[count]
  
  tags = {
    Name = "${var.environment}.subnet-${count.index+1}"
  }
}

