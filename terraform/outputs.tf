output "vpc_id" {
  value = aws_vpc.main.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "rds_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "rds_database" {
  value = aws_db_instance.main.db_name
}
