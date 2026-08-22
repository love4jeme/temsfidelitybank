variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID from the vpc module"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for EKS worker nodes"
  type        = list(string)
}

variable "eks_public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public endpoint"
  type        = list(string)
}