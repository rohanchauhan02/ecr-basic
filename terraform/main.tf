
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


module "vpc" {

  source = "./modules/vpc"

  project_name = var.project_name

  environment = var.environment

  vpc_cidr = var.vpc_cidr

  public_subnet_cidrs = var.public_subnet_cidrs

  private_subnet_cidrs = var.private_subnet_cidrs

  availability_zones = var.availability_zones

  tags = {
    Project = var.project_name
    Environment = var.environment
  }
}
