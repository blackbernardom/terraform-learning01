module "vpc_resource" {
    source = "../module"
    cidr_block = "10.0.0.0/16"
    vpc_name = "main"
    Environment = "Test"
}
