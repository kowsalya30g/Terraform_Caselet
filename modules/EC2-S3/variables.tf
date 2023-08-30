variable "s3_bucketname"{
    default = "case-bucket213-mars"
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
    Name = "Mars_Kowsalya_terraformAssignment"
  }
}