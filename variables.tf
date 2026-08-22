variable "vpc_cidrblock" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "eks_public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public endpoint"
  type        = list(string)
}