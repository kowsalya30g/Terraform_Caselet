terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9"
    }
}
 backend "s3" {
      bucket         = "case-bucket213-mars"
      key            = "terraform.tfstate"
      region         = "eu-central-1"
      encrypt        = true
        
    }
}

provider "aws" {
  region     = "eu-central-1"
}

module "ec2" {
     source = "./modules/EC2-S3"
     
}




 

