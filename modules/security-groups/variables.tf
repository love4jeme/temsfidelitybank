variable "vpc_id" {
  description = "VPC ID from the vpc module"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}