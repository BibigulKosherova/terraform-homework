resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.kaizen.id
  cidr_block              = var.subnets[0].cidr_block
  availability_zone       = var.subnets[0].availability_zone
  map_public_ip_on_launch = var.subnets[0].map_public_ip_on_launch
  tags = {
    Name = var.subnets[0].name
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.kaizen.id
  cidr_block              = var.subnets[1].cidr_block
  availability_zone       = var.subnets[1].availability_zone
  map_public_ip_on_launch = var.subnets[1].map_public_ip_on_launch
  tags = {
    Name = var.subnets[1].name
  }
}

resource "aws_subnet" "private1" {
  vpc_id                  = aws_vpc.kaizen.id
  cidr_block              = var.subnets[2].cidr_block
  availability_zone       = var.subnets[2].availability_zone
  map_public_ip_on_launch = var.subnets[2].map_public_ip_on_launch
  tags = {
    Name = var.subnets[2].name
  }
}

resource "aws_subnet" "private2" {
  vpc_id                  = aws_vpc.kaizen.id
  cidr_block              = var.subnets[3].cidr_block
  availability_zone       = var.subnets[3].availability_zone
  map_public_ip_on_launch = var.subnets[3].map_public_ip_on_launch
  tags = {
    Name = var.subnets[3].name
  }
}