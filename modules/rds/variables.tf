variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the vpc module"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private DB subnet IDs from the vpc module"
  type        = list(string)
}

variable "rds_sg_id" {
  description = "RDS security group ID from the security-groups module"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS instance"
  type        = string
  sensitive   = true
}