resource "aws_instance" "amazon" {
  ami                    = var.ec2["ami_id"]
  instance_type          = var.ec2["instance_type"]
  subnet_id              = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.allow_common_ports.id]
  key_name = aws_key_pair.deployer.key_name

  tags = local.common_tags
}