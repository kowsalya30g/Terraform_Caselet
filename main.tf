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
  access_key = "AKIAZ7TTZIMMRQNTO3XI"
  secret_key = "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"
}

# module "tags"{
#     source = "./modules/Tags"
#     tags = "${var.tags}"
# }

module "ec2" {
     source = "./modules/EC2-S3"
     
}



 

