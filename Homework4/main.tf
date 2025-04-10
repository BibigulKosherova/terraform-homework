resource "aws_vpc" "kaizen" {
  cidr_block           = var.vpc_config.cidr_block
  enable_dns_support   = var.vpc_config.enable_dns_support
  enable_dns_hostnames = var.vpc_config.enable_dns_hostnames

  tags = local.common_tags
}

resource "aws_internet_gateway" "homework3_igw" {
  vpc_id = aws_vpc.kaizen.id

  tags = {
    Name = var.internet_gateway_name
  }
}


