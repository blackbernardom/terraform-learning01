terraform {
  backend "s3" {
    bucket = "terraform-${nome-usilizacao}"
    key    = "aws/ec2/02/"
    region = "us-east-1"
  }
}