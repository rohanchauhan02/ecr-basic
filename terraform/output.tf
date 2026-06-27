
output "github_role_arn" {
  value = module.iam_role.role_arn
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecr_repository_name" {
  value = module.ecr.repository_name
}

output "ecr_repository_arn" {
  value = module.ecr.repository_arn
}
