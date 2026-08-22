output "vpc_id" {
  value = aws_vpc.vpc_main.id
}

output "private_subnet_worker_ids" {
  value = [
    aws_subnet.private_subnet_worker_1.id,
    aws_subnet.private_subnet_worker_2.id
  ]
}

output "private_subnet_db_ids" {
  value = [
    aws_subnet.private_subnet_db_1.id,
    aws_subnet.private_subnet_db_2.id
  ]
}