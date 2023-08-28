resource "aws_subnet" "caselet_subnet" {
  vpc_id     = aws_vpc.caselet_vpc.id
  cidr_block = "10.0.1.0/24"
}