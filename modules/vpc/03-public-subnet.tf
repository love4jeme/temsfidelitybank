resource "aws_subnet" "public_subnet_1" {

  vpc_id                  = aws_vpc.vpc_main.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                                       = "${var.environment}-public-subnet-1"
    Environment                                = var.environment
    "kubernetes.io/cluster/${var.environment}" = "shared"
    "kubernetes.io/role/elb"                   = "1"

  }
}

resource "aws_subnet" "public_subnet_2" {

  vpc_id                  = aws_vpc.vpc_main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                                       = "${var.environment}-public-subnet-2"
    Environment                                = var.environment
    "kubernetes.io/cluster/${var.environment}" = "shared"
    "kubernetes.io/role/elb"                   = "1"

  }
}


