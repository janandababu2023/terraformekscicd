terraform {
  backend "s3" {
    bucket = "myeksclusterproj"
    key    = "eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
