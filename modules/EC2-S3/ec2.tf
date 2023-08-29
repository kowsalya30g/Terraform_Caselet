resource "aws_instance" "example_instance" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name = "ec2-key"
  subnet_id     = aws_subnet.caselet_subnet.id
  security_groups = [aws_security_group.caselet_security_group.name]
  tags = var.tags
}

# {
#   Name = "${var.ec2_name}" 
#   }
