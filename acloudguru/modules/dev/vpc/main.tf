# --- vpc/main.tf ---#

resource "aws_vpc" "instance_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "instance_subnet" {
  vpc_id            = aws_vpc.instance_vpc.id
  availability_zone = var.availability_zone
  cidr_block        = var.subnet_cidr_block
}

resource "aws_internal_gateway" "instance_gateway" {
  vpc_id    = aws_vpc.instance_vpc.id
  subnet_id = aws_subnet.instance_subnet.id
}

resource "aws_route_table" "instance_route_table" {
  vpc_id = aws_vpc.instance_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internal_gateway.instance_gateway.id
  }
}

resource "aws_route_table_association" "instance_route_table_association" {
  subnet_id      = aws_subnet.instance_subnet.id
  route_table_id = aws_route_table.instance_route_table.id
}