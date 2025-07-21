variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "key_name" {
  description = "Key Pair Name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for Security Group"
  type        = string
}
