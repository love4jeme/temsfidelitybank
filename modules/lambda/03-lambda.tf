resource "aws_lambda_function" "login_notifier" {
  function_name = "${var.environment}-login-notifier"
  role          = aws_iam_role.login_notifier_exec.arn

  package_type = "Image"
  image_uri    = "${aws_ecr_repository.login_notifier.repository_url}:latest"

  timeout     = 10
  memory_size = 128

  tags = {
    Name        = "${var.environment}-login-notifier"
    Environment = var.environment

  }
}