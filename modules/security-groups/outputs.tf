output "worker_node_sg_id" {
  value = aws_security_group.worker_nodes.id
}

output "rds_sg_id" {
  value = aws_security_group.rds.id
}