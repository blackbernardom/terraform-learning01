resource "aws_s3_bucket" "this" {

    bucket = var.name
    tags = {
    Name        = var.name
    Environment = "Estudos"
  }


}