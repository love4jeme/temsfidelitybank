resource "aws_security_group" "worker_nodes" {
  name        = "${var.environment}-worker-nodes-sg"
  description = "Security group for EKS worker nodes"
  vpc_id      = var.vpc_id

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.environment}-worker-nodes-sg"
    Environment = var.environment
  }
}