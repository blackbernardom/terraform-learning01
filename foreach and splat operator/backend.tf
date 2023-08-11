terraform {
  backend "s3" {
    bucket = "terraform-"
    key    = "aws/ec2/02/"
    region = "us-east-1"
  }
}