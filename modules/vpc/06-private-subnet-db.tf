resource "aws_subnet" "private_subnet_db_1" {
  vpc_id            = aws_vpc.vpc_main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name        = "${var.environment}-private-subnet-db-1"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_db_2" {
  vpc_id            = aws_vpc.vpc_main.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name        = "${var.environment}-private-subnet-db-2"
    Environment = var.environment
  }
}