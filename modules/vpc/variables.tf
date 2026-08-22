variable "vpc_cidrblock" {
  description = "CIDR block for vpc"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}