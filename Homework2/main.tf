#Get all availability zones in the region
data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_instance" "web" {
  count = 3
  ami           = "ami-03f8acd418785369b"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  availability_zone = data.aws_availability_zones.available.names[count.index]
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_common_ports.id]
  user_data = file("apache.sh")

  tags = {
    Name = "web-${count.index + 1}"
  }
}

