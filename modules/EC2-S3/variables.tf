variable "s3_bucketname"{
    default = "case_bucket321"
}
variable "ec2_name"{
    default = "Mars_Kowsalya_terraformAssignment"
}
variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {
    ProductName = "Mars"
    TechnicalOwner = "Kowsalya"
    Environment = "dev"
    CaseCode = "12345"
    Region = "eu-central-1"
  }
}