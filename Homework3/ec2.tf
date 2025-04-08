resource "aws_instance" "ubuntu" {
  ami                    = "ami-075686beab831bb7f"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.allow_common_ports.id]
  user_data              = file("apache.sh")

  tags = {
    Name = "ubuntu"
  }
}

resource "aws_instance" "amazon" {
  ami                    = "ami-087f352c165340ea1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.allow_common_ports.id]
  user_data              = file("apache2.sh")

  tags = {
    Name = "amazon"
  }
}