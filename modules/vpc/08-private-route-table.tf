resource "aws_route_table" "private_rt_1" {
  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_1.id
  }

  tags = {
    Name        = "${var.environment}-private-rt-1"
    Environment = var.environment
  }
}

resource "aws_route_table" "private_rt_2" {
  vpc_id = aws_vpc.vpc_main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_2.id
  }

  tags = {
    Name        = "${var.environment}-private-rt-2"
    Environment = var.environment
  }
}

resource "aws_route_table_association" "private_worker_1" {
  subnet_id      = aws_subnet.private_subnet_worker_1.id
  route_table_id = aws_route_table.private_rt_1.id
}

resource "aws_route_table_association" "private_worker_2" {
  subnet_id      = aws_subnet.private_subnet_worker_2.id
  route_table_id = aws_route_table.private_rt_2.id
}

resource "aws_route_table_association" "private_db_1" {
  subnet_id      = aws_subnet.private_subnet_db_1.id
  route_table_id = aws_route_table.private_rt_1.id
}

resource "aws_route_table_association" "private_db_2" {
  subnet_id      = aws_subnet.private_subnet_db_2.id
  route_table_id = aws_route_table.private_rt_2.id
}