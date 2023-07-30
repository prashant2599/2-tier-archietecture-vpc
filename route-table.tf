
#Create a public route table
resource "aws_route_table" "public_route_table" {
  vpc_id            = aws_vpc.vpctier.id

  tags = {
    Name = "PublicRouteTable"
  }
}

# Associate the public route table with the public subnets
resource "aws_route_table_association" "public_subnet1_association" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet2_association" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

# Create a private route table
resource "aws_route_table" "private_route_table" {
    vpc_id            = aws_vpc.vpctier.id

#   vpc_id = data.aws_vpc.existing_vpc.id
  tags = {
    Name = "PrivateRouteTable"
  }
}

# Associate the private route table with the private subnets
resource "aws_route_table_association" "private_subnet1_association" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_subnet2_association" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}
