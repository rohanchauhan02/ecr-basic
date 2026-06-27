variable "role_name" {
  default = "GitHubActionsTerraformRole"

}

variable "github_owner" {
  description = "The GitHub owner (user or organization) for the repository"
  default     = "rohanchauhan02"
}
variable "github_repo" {
  description = "The GitHub repository name"
  default     = "ecr-basic"
}
