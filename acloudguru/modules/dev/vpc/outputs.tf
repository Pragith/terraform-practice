# --- vpc/outputs.tf ---#


output "subnet_id" {
  value       = aws_subnet.instance_subnet.id
  description = "The ID of the subnet"
}

output "vpc_id" {
  value       = aws_vpc.instance_vpc.id
  description = "The ID of the VPC"
}

output "route_table_id" {
  value       = aws_route_table.instance_route_table.id
  description = "The ID of the route table"
}

output "gateway_id" {
  value       = aws_internal_gateway.instance_gateway.id
  description = "The ID of the gateway"
}

output "subnet_cidr_block" {
  value       = aws_subnet.instance_subnet.cidr_block
  description = "The CIDR block of the subnet"
}

output "vpc_cidr_block" {
  value       = aws_vpc.instance_vpc.cidr_block
  description = "The CIDR block of the VPC"
}

output "availability_zone" {
  value       = aws_subnet.instance_subnet.availability_zone
  description = "The availability zone of the subnet"
}

output "route_table_association_id" {
  value       = aws_route_table_association.instance_route_table_association.id
  description = "The ID of the route table association"
}
