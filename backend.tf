terraform {
  backend "s3" {
    bucket         = "terraform-baihaqi"
    key            = "tfstate/terraform.tfstate"
    region         = "ap-southeast-3"
    dynamodb_table = "terraform-locks"   # untuk locking
    encrypt        = true
  }
}
