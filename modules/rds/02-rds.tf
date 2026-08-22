resource "aws_db_instance" "main" {
  identifier     = "${var.environment}-db"
  engine         = "postgres"
  engine_version = "15"
  instance_class = "db.t3.micro"

  allocated_storage = 20
  storage_type      = "gp2"

  db_name  = "temsfidelity"
  username = "dbadmin"
  password = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [var.rds_sg_id]

  multi_az            = true
  skip_final_snapshot = true
  publicly_accessible = false

  tags = {
    Name        = "${var.environment}-db"
    Environment = var.environment
  }
}