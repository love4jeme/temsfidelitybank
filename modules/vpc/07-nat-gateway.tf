resource "aws_eip" "nat_1" {
  domain = "vpc"

  tags = {
    Name        = "${var.environment}-nat-eip-1"
    Environment = var.environment
  }
}

resource "aws_eip" "nat_2" {
  domain = "vpc"

  tags = {
    Name        = "${var.environment}-nat-eip-2"
    Environment = var.environment
  }
}

resource "aws_nat_gateway" "nat_1" {
  allocation_id = aws_eip.nat_1.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name        = "${var.environment}-nat-gateway-1"
    Environment = var.environment
  }
}

resource "aws_nat_gateway" "nat_2" {
  allocation_id = aws_eip.nat_2.id
  subnet_id     = aws_subnet.public_subnet_2.id

  tags = {
    Name        = "${var.environment}-nat-gateway-2"
    Environment = var.environment
  }
}