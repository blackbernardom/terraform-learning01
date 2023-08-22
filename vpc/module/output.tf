output "aws_vpc_ip" {
    value = aws_vpc.this.cidr_block  
}

output "vpc_name" {
    value = aws_vpc.this.arn
  
}

output "owner_id" {
    value = aws_vpc.this.owner_id
  
}

output "vpc_id" {
    value = aws_vpc.this.id
}