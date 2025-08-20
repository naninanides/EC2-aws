terraform {
  backend "s3" {
    bucket         = "terraform-baihaqi"
    key            = "tfstate/terraform.tfstate"
    region         = "ap-southeast-3"
    encrypt        = true
  }
}
