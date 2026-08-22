resource "aws_ecr_repository" "login_notifier" {
  name                 = "${var.environment}-login-notifier"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "${var.environment}-login-notifier-ecr"
    Environment = var.environment
  }
}