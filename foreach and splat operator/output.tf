output "extensions" {
  value = local.files_extensions

}

output "instances_arns" {
  value = [for k, v in aws_aws_instance.this : v.arn]

}

output "instances_names" {

  value = { for k, v in aws_aws_instance.this : k => v.tags.name }

}