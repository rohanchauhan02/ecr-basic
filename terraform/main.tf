
module "iam_role" {
  source = "./modules/iam"
}

module "ecr" {

  source = "./modules/ecr"

  repository_name = var.repository_name

  project_name = var.project_name

  environment = var.environment

  tags = {
    Owner = "Rohan"
  }
}
