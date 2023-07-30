# Create public subnets
resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.vpctier.id
  cidr_block        = var.public_subnet["pub1"]
  map_public_ip_on_launch = true
  availability_zone = var.vpc["azone1"]

  tags = {
    Name = "public_subnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.vpctier.id
  map_public_ip_on_launch = true
  cidr_block        = var.public_subnet["pub2"]
  availability_zone = var.vpc["azone2"]


  tags = {
    Name = "public_subnet2"
  }
}

# Create private subnets
resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.vpctier.id
  cidr_block        = var.private_subnet3_cidr_block
  availability_zone = var.vpc["azone1"]
  map_public_ip_on_launch = false

  tags = {
    Name = "private_subnet1"
  }


}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.vpctier.id
  cidr_block        = var.private_subnet4_cidr_block
  availability_zone = var.vpc["azone2"]
  map_public_ip_on_launch = false

  tags = {
    Name = "private_subnet2"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpctier.id

  tags = {
    Name = "InternetGateway"
  }
}
