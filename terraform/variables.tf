variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "aws-two-tier-app"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default = [
    "eu-west-1a",
    "eu-west-1b"
  ]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
}
