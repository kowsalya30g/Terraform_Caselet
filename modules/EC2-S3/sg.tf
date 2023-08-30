resource "aws_security_group" "caselet_security_group" {
  name        = "Caselet-Sg"
  description = "Caselet sample security group"
  vpc_id      = aws_vpc.caselet_vpc.id
  
  ingress {
    description = "SSH Inbound rule"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTPS Inbound rule"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP Inbound rule"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#   output "security_group_id" {
#       value = aws_security_group.caselet_security_group.id
# }
}
# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#     security_group_id    = "${data.aws_security_group.caselet_security_group.id}"
#     network_interface_id = "${aws_instance.dev.primary_network_interface_id}"
# }

