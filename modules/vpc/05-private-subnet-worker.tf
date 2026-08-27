resource "aws_subnet" "private_subnet_worker_1" {
  vpc_id            = aws_vpc.vpc_main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name                                       = "${var.environment}-private-subnet-worker-1"
    Environment                                = var.environment
    "kubernetes.io/cluster/${var.environment}-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "private_subnet_worker_2" {
  vpc_id            = aws_vpc.vpc_main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name                                       = "${var.environment}-private-subnet-worker-2"
    Environment                                = var.environment
    "kubernetes.io/cluster/${var.environment}" = "shared"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}