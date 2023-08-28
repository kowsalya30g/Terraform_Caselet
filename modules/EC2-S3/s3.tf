module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.0"
  bucket = "${var.s3_bucketname}"
  acl    = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  versioning = {
    enabled = true
  }
  tags = "${var.tags}"
}

terraform {
  backend "s3" {
    bucket         = "${var.s3_bucketname}"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}
