terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "aws/ec2/01/"
    region = "us-east-1"
  }
}