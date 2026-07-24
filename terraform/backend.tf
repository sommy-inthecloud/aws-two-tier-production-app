terraform {
  backend "s3" {
    bucket         = "aws-two-tier-production-terraform-state-100038279691"
    key            = "production/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
