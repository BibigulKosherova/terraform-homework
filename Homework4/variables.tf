variable "vpc_config" {
  description = "VPC configuration"
  type = object({
    cidr_block           = string
    enable_dns_support   = bool
    enable_dns_hostnames = bool
  })
  default = {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
  }
}

variable "subnets" {
  description = "Subnet configuration"
  type = list(object({
    cidr_block           = string
    availability_zone = string
    map_public_ip_on_launch = bool
    name                    = string
  }))
}

variable "internet_gateway_name" {
    type = string
    default = "igw"
}

variable "route_table_names" {
    type = list(string)
    default = ["public-rt", "private-rt"]
}

variable "allowed_ports" {
    type = list(number)
    default = [22, 80, 443, 3306]
}

variable "ec2" {
    type = map(string)
    default = {
        ami_id = "ami-087f352c165340ea1"
        instance_type = "t2.micro"
    }
}