resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Name        = "${var.environment}-hosted-zone"
    Environment = var.environment
  }
}