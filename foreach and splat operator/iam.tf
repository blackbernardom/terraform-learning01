resource "aws_iam_user" "the-accounts" {
  for_each = toset(["Tamarindo", "Amora", "Groselha", ])
  name     = each.key

}