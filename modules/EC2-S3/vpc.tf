resource "aws_vpc" "caselet_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "Caselet-VPC"
    }  
}

# output "vpc_id" {
#       value = "${aws_vpc.prod-vpc.id}"
# }