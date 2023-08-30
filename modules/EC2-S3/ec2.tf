resource "aws_instance" "dev" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name = "ec2-key"
  subnet_id = aws_subnet.caselet_subnet.id
  security_groups = [aws_security_group.caselet_security_group.id]
  tags = var.tags
  depends_on = [
    aws_security_group.caselet_security_group,
    aws_subnet.caselet_subnet
  ]
}

# {
#   Name = "${var.ec2_name}" 
#   }
