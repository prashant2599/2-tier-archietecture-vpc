# Create VPC
resource "aws_vpc" "vpctier" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "2tierarchitecture"
  }
}

output "vpc_id" {
  value = aws_vpc.vpctier.id
}
