resource "aws_security_group" "rds" {
  name        = "${var.environment}-rds-sg"
  description = "Security group for RDS database"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Allow PostgreSQL access from worker nodes"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.worker_nodes.id]
  }

  tags = {
    Name        = "${var.environment}-rds-sg"
    Environment = var.environment
  }
}