terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  } 
}
provider "aws" {
  region     = "eu-central-1"
  access_key = "XXXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXX"
}

# module "tags"{
#     source = "./modules/Tags"
#     tags = "${var.tags}"
# }

module "ec2" {
     source = "./modules/EC2-S3"
     
}



 

